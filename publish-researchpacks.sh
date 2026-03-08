#!/bin/bash
# publish-researchpacks.sh - Convert ResearchPacks to Hugo content
# IMPORTANT: Only publishes from ~/ResearchPacks/Active/

set -e

RESEARCH_PACKS="/home/clawd/ResearchPacks"
HUGO_SITE="/home/clawd/.openclaw/workspace/hugo-research-site"

echo "📦 Publishing ResearchPacks to Hugo site..."

cd "$HUGO_SITE"

# Create packs directory
mkdir -p content/packs

# Process each active research pack
for pack_dir in "$RESEARCH_PACKS/Active"/*/; do
    if [ -d "$pack_dir" ]; then
        pack_name=$(basename "$pack_dir")
        echo "  📄 Processing: $pack_name"
        
        # Read the index file to get metadata
        index_file="$pack_dir/00-index.md"
        if [ -f "$index_file" ]; then
            # Extract title from frontmatter or first heading
            title=$(grep -E "^title:" "$index_file" | head -1 | sed 's/title: *"*//' | sed 's/"*$//' || echo "")
            if [ -z "$title" ]; then
                title=$(grep -E "^# " "$index_file" | head -1 | sed 's/^# //')
            fi
            
            # Extract date
            date=$(grep -E "^date:" "$index_file" | head -1 | sed 's/date: *//' | sed 's/"*$//' || date '+%Y-%m-%d')
            
            # Create Hugo content file
            hugo_file="content/packs/${pack_name}.md"
            
            # Start with frontmatter
            cat > "$hugo_file" << EOF
---
title: "${title}"
date: ${date}
draft: false
---

EOF
            
            # Concatenate all sections in order
            for section in "$pack_dir"/*.md; do
                if [ -f "$section" ]; then
                    section_name=$(basename "$section" .md)
                    # Skip the index file content (we use it for metadata)
                    if [[ "$section_name" == "00-index" ]]; then
                        continue
                    fi
                    
                    echo "" >> "$hugo_file"
                    echo "---" >> "$hugo_file"
                    echo "" >> "$hugo_file"
                    
                    # Remove frontmatter from section files and add to main file
                    sed '/^---$/,/^---$/d' "$section" >> "$hugo_file"
                fi
            done
            
            echo "    ✓ Created: packs/${pack_name}.md"
        fi
    fi
done

# Build the site
echo "🔨 Building Hugo site..."
hugo --minify

# Commit and push
echo "🚀 Deploying to GitHub..."
git add .
git commit -m "ResearchPacks update: $(date '+%Y-%m-%d %H:%M')" || true

# Create repo if needed and push
if ! git remote get-url origin >/dev/null 2>&1; then
    gh repo create research-notes --public --description "CasaClawd Research Packs" --source=. --remote=origin --push
else
    git push origin main --force
fi

echo "✅ Done!"
