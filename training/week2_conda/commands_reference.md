# Week 2 - Conda Reference Commands


```bash
# Create an environment with a specific Python version
conda create -n week2-test python=3.11

# Activate the environment
conda activate week2-test

# Confirm the version
python --version

# Install a tool from bioconda
conda install -c bioconda samtools
samtools --version

# Create an environment from an existing yml file
conda env create -f environment.yml

# List all existing environments
conda env list

# Switch between environments
conda deactivate
conda activate week2-reference

# Remove an environment you no longer need
conda env remove -n week2-test

# Set correct channel priority for bioinformatics tools
conda config --add channels bioconda
conda config --add channels conda-forge
conda config --set channel_priority strict
```
