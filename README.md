# DSurfTomo-Fast

**DSurfTomo-Fast** is an updated version of DSurfTomo  
(originally developed by Hongjian Fang: https://github.com/HongjianFang/DSurfTomo)

Contact: Yichen Pan, pyc2020@mail.ustc.edu.cn, ycpan03@gmail.com

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

---

For detailed instructions on program usage, please refer to:

- Official manual:  
  https://github.com/HongjianFang/DSurfTomo/blob/stable/doc/ManualDSurfTomoV1.4.pdf  

- Methodological description:  
  Fang et al. (2015, GJI)

Fang, H., Yao, H., Zhang, H., Huang, Y. C., & van der Hilst, R. D. (2015). Direct inversion of surface wave dispersion for three-dimensional shallow crustal structure based on ray tracing: methodology and application. Geophysical Journal International, 201(3), 1251-1263.
