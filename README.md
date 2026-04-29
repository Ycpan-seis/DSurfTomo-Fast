# DsurfTomo-Fast

**DsurfTomo-Fast** is an updated version of DSurfTomo  
(originally developed by Hongjian Fang: https://github.com/HongjianFang/DSurfTomo)

---

## Overview

This version introduces several practical updates focused on scalability and computational performance:

- Parallel processing is implemented during the Fast Marching Method (FMM) travel-time calculation.
- Integer overflow issues are resolved, enabling large-scale data processing.
- Output of model *roughness* is added.

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
