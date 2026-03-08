---
title: "Constraints & Requirements"
date: 2026-03-08
weight: 20
---

## The Problem

Power a shipping container at a rural QLD property with 12V DC for:
- LED lighting (interior/exterior)
- 12V refrigerator (continuous load)
- Possibly phone charging, small devices

Container is ~75m from main house. Using secondhand solar panels to minimize cost.

## Location-Specific Constraints (Rural QLD)

| Constraint | Value | Notes |
|------------|-------|-------|
| Elevation | ~700m | Cooler temps, frost risk in winter |
| Peak sun hours | 4.5-5.5 hrs/day | Good, but seasonal variation |
| Winter performance | -30% vs summer | Shorter days, lower sun angle |
| Frost days | 30-50/year | LiFePO4 charging issues |
| Distance to house | ~75m | Separate system justified |
| Grid access | Town power available | But container is off-grid by location |

## Hard Constraints

| Constraint | Value | Notes |
|------------|-------|-------|
| Mounting surface | Shipping container roof | ~2.4m x 6m (assuming 20ft) |
| Panel source | Secondhand/Gumtree/FB Marketplace | Must verify condition before purchase |
| System voltage | 12V DC | Matches fridge and lighting; simpler wiring |
| Weather exposure | Full outdoor | Waterproofing, wind load, hail risk |
| Container integrity | No drilling preferred | Avoid roof penetrations if possible |
| Time available | Weekends only, sporadic | Project needs to be modular/pausable |

## Power Requirements (Estimated)

| Load | Watts | Hours/Day | Wh/Day |
|------|-------|-----------|--------|
| 12V Fridge | 50W avg | 24 | 1,200 |
| LED lights (4x) | 20W total | 4 | 80 |
| Phone charging | 10W | 2 | 20 |
| **Total Daily** | | | **~1,300 Wh** |

With 20% buffer + winter derating: **~2,000 Wh/day target**

## Success Criteria

1. System runs fridge 24/7 without battery depletion
2. 2-3 days autonomy (cloudy weather backup)
3. All-season operation (including frost)
4. Total cost under AUD$2,500
5. Weekend-friendly installation (can pause/resume)
