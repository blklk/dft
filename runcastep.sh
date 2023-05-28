#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=48
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=2G

#SBATCH --time=00:30:00
#SBATCH --job-name=castep-bridgmanite

#SBATCH --clusters=arc
#SBATCH --partition=short

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

module load intel
module load OpenMPI

mpirun $HOME/bin/castep.mpi bridgmanite
