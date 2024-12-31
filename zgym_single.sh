#!/bin/bash -l
#SBATCH --partition=long
#SBATCH --job-name=drlclus
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --get-user-env
#SBATCH --export=NONE
#SBATCH --time=24:00:00
#SBATCH --mem-per-cpu 4G

set -e  # exit on error.
echo "Date:     $(date)"
echo "Hostname: $(hostname)"

module --quiet purge

cd "$PBS_O_WORKDIR"
export OMP_NUM_THREADS=1

echo "Starting at "`date`
echo "SLURM_JOBID="$SLURM_JOBID
echo "SLURM_JOB_NODELIST"=$SLURM_JOB_NODELIST
echo "SLURM_NNODES"=$SLURM_NNODES
echo "SLURMTMPDIR="$SLURMTMPDIR
echo "working directory = "$SLURM_SUBMIT_DIR


#source /rds/projects/2018/johnston-copper-clusters-rr/Rajesh-2/anaconda3/etc/profile.d/conda.sh
source /network/scratch/r/rajesh.raju/miniforge3/etc/profile.d/conda.sh
conda activate clusgym


echo "Starting at "`date`
#mpirun  gym_trpo_parallel_training_ver50_expt1.py
python  gym_trpo_single.py
echo "Ending at "`date`





