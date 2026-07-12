# DSurfTomo-Fast

**DSurfTomo-Fast** is an updated version of DSurfTomo  
(originally developed by Hongjian Fang: https://github.com/HongjianFang/DSurfTomo)

---

## Overview

This version introduces several practical updates focused on scalability and computational performance:

1. Parallel processing is implemented during the Fast Marching Method (FMM) travel-time calculation.
2. Integer overflow issues are resolved, enabling large-scale data processing.
3. Output of model *roughness* is added.

---

## Usage

The usage is fully consistent with the original **DSurfTomo**.

The only required modification:

- Add one additional line at the end of the `DSurfTomo` input file to specify the number of parallel threads.

---

## Notes

- When running in parallel, you may need to increase the stack size:

```bash
ulimit -s unlimited
```

- Model setting
<p align="center">
  <img width="500" alt="fig0712" src="https://github.com/user-attachments/assets/b3305fb5-b824-4db6-a83a-016c56126db1" />
</p>

**Figure 1.** Schematic illustration of the model setup. The black grid represents the input model (MOD), the red grid indicates the inversion domain, and the green dot marks the starting point that should be specified in the input file (goxd, gozd).

---

For detailed instructions on program usage, please refer to:

- Official manual:  
  https://github.com/HongjianFang/DSurfTomo/blob/stable/doc/ManualDSurfTomoV1.4.pdf  

- Methodological description:  
  Fang et al. (2015, GJI)

Fang, H., Yao, H., Zhang, H., Huang, Y. C., & van der Hilst, R. D. (2015). Direct inversion of surface wave dispersion for three-dimensional shallow crustal structure based on ray tracing: methodology and application. Geophysical Journal International, 201(3), 1251-1263.
