# FDTD 3D CPU&GPU
Although the execution speed on the GPU is awesome, Video Random Access Memory (VRAM) in this space is limited, so to address this problem VRAM and RAM are used simultaneously. Therefore, constant matrices such as field coefficients and some boundary conditions coefficients are defined on RAM and variable matrices such as fields and Psi are defined on VRAM. This solution removes VRAM limitation, but the execution speed is decreased.

According to Fig 1(b) coordinating the GPU and CPU decreases the execution speed but it is still faster than that of the basic GPU code.

![GPU_2a](https://user-images.githubusercontent.com/94797491/152184206-d36591af-2d96-4177-9b7c-99a1a0fa5d0e.jpg)
Fig. 1.  Comparison between the execution speed of the basic GPU code, the modified GPU code, and coordinating the GPU and CPU code.
