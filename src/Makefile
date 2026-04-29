CMD = DSurfTomo
Debug = -g
FC = gfortran
FFLAGS  = -O3 -ffixed-line-length-none -ffloat-store\
           -W  -fbounds-check -m64 -mcmodel=medium
F90SRCS = lsmrDataModule.f90 lsmrblasInterface.f90\
          lsmrblas.f90 lsmrModule.f90 delsph.f90\
	  aprod.f90 gaussian.f90 getpercentile.f90
FSRCS =  surfdisp96.f  

OBJS = $(F90SRCS:%.f90=%.o) $(FSRCS:%.f=%.o) main.o CalSurfG.o CalSurfG_parallel.o 

all:$(CMD)

DSurfTomo:$(OBJS)
	$(FC) -fopenmp $^ -o $@

main.o: main.f90
	$(FC) $(FFLAGS) -c $< -o $@ ${Debug}

CalSurfG.o:CalSurfG.f90
	$(FC) -fopenmp $(FFLAGS) -c $< -o $@ ${Debug}

CalSurfG_parallel.o:CalSurfG_parallel.f90
	$(FC) -fopenmp $(FFLAGS) -c $< -o $@ ${Debug}

%.o: %.f90
	$(FC) $(FFLAGS) -c $(@F:.o=.f90) -o $@ ${Debug}
%.o: %.f
	$(FC) $(FFLAGS) -c $(@F:.o=.f) -o $@ ${Debug}
clean:
	rm -f *.o *.mod $(CMD)


