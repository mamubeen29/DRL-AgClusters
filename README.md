# DRL for exploration of Ag Clusters
### DRL Framework for Nanocluster Global Minimum Search 
We have developed a Deep Reinforcement Learning (DRL) framework for exploring nanoclusters, efficiently identifying ground state and low-energy configurations across various cluster types and sizes. 






### How to Run the Code

1. **Set Up the Environment:**
   - Install the required Conda environment using the provided YAML file:
     ```bash
     conda env create -f env_clusgym.yml
     ```

2. **Configure the Nanocluster Composition:**
   - Edit `gym_trpo_single.py` to select the desired nanocluster composition.
   - For simulating a cluster of 13 Silver (Ag) atoms:
     ```python
     eleNames = ['Ag']
     eleNums = [13]
     ```

3. **Run the Simulation:**
   - Execute the script using Python. Choose the appropriate version for your needs:
     ```bash
     python gym_trpo_single.py    # For single execution
     ```
