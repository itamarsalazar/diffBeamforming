#!/usr/bin/bash
#SBATCH --gpus-per-node=1
#SBATCH --nodes=1

#SBATCH --partition=gamerpcs
#SBATCH --nodelist=worker1

##SBATCH --partition=thinkstation-p340
##SBATCH --nodelist=worker7

#SBATCH --output=log.out
##SBATCH --time=1000:00:00  # Run for 1000 hours

. /etc/profile.d/modules.sh
module load diffBeamforming/1.0

srun python /nfs/privileged/isalazar/projects/diffBeamforming/dbua.py
