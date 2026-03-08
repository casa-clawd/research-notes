---
title: "Options Comparison"
date: 2026-03-08
weight: 40
---

## System Architecture Options

| Option | Pros | Cons | Est. Cost (AUD) | Best For |
|--------|------|------|-----------------|----------|
| **Budget Lead-Acid** | Lowest upfront, proven tech | Heavy, short lifespan, 50% usable, maintenance | $1,400-1,800 | Occasional use, tight budget |
| **Mid-Range LiFePO4** | Good lifespan, lightweight, low-temp protection | Higher upfront | $1,800-2,400 | Daily use, frost-prone areas |
| **Premium Victron** | 10+ year life, best MPPT, expandability | Expensive | $2,400-2,800 | Set-and-forget, expansion ready |

---

## Deep Dive: Budget Lead-Acid System

### Components
- **Panels**: 2x 300W secondhand ($100-150 each from Gumtree)
- **Controller**: 30A PWM ($50-80) or budget MPPT ($120)
- **Batteries**: 2x 100Ah AGM lead-acid ($200-250 each)
- **Mounting**: Domino Clamps 4x ($200-250 shipped)
- **Wiring/fuses**: $100-150
- **Fridge**: Alpicool C20 ($300-400)

### Total: ~AUD$1,400-1,800

### Why it works
- Lowest barrier to entry
- AGM batteries maintenance-free
- Easy to find locally (Battery World, etc.)

### Why it might not
- Batteries last 2-3 years with daily cycling
- 50% DoD = only 100Ah usable from 200Ah bank
- Heavy (60+ kg for battery bank)
- **Frost risk**: Lead-acid handles cold better, but still derated
- Voltage sag under load affects fridge

---

## Deep Dive: Mid-Range LiFePO4 System (Recommended)

### Components
- **Panels**: 2x 300W secondhand ($200-300 from Gumtree/FB)
- **Controller**: Renogy Rover 30A MPPT ($135-180)
- **Battery**: Renogy 200Ah LiFePO4 with low-temp protection ($730-900)
- **Mounting**: Domino Clamps + brackets ($200-280 shipped)
- **Wiring/fuses/breakers**: $150-200
- **Fridge**: Alpicool C20 or AD40 ($350-500)

### Total: ~AUD$1,800-2,400

### Why it works
- 200Ah @ 80% DoD = 160Ah usable (vs 100Ah lead-acid)
- 5-10 year lifespan
- Lightweight (~25kg vs 60kg)
- **Low-temp protection built-in** (critical for frost-prone areas)
- Flat discharge curve = stable voltage for fridge
- MPPT extracts more from secondhand panels
- Bluetooth monitoring (check remotely)

---

## Decision Matrix

Score 1-5 for each criterion:

| Criterion | Weight | Budget Lead-Acid | Mid LiFePO4 | Premium |
|-----------|--------|------------------|-------------|---------|
| Upfront cost | 20% | 5 | 3 | 2 |
| Long-term value | 25% | 2 | 5 | 4 |
| Frost suitability | 25% | 3 | 5 | 5 |
| Weekend install friendly | 15% | 4 | 4 | 3 |
| Expandability | 15% | 2 | 3 | 5 |
| **Weighted Score** | | 3.1 | 4.2 | 3.9 |

**Winner**: Mid-Range LiFePO4 for frost-prone conditions and best balance of cost/value.
