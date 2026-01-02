
---

## `docs/01-requirements.md`

```md
# Requirements

## Mandatory
- Ubuntu 22 or newer
- Linux kernel 5.15+
- Hardware virtualization enabled in BIOS
  - Intel VT-x
  - AMD-V

Check:
```bash
uname -r
lscpu | grep Virtualization
