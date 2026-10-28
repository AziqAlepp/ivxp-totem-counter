# IVXP Totem Counter
Client-side Fabric mod, no libraries (no Fabric API, no ukulib).
- Player pops a totem -> their counter +1 (chat line + HUD list top-left)
- YOU die -> ALL counters reset
- Another player dies -> only THEIR counter resets

Build: JDK 21 + internet, then `./build-all.sh` -> jars in `dist/` (1.21.4 and 1.21.11).
Based on TotemCounter by uku (MIT, see LICENSE).
