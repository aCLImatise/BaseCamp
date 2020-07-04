class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/simulate_sequences.py.cwl
inputs:
- id: number_of_sequences
  doc: Number of sequences (1).
  type: string
  inputBinding:
    prefix: -n
- id: length_simulated_sequences
  doc: Length of simulated sequences (3000).
  type: long
  inputBinding:
    prefix: -m
- id: relative_base_frequencies
  doc: Relative base frequencies in A,C,G,T order (1,1,1,1).
  type: string
  inputBinding:
    prefix: -b
- id: random_seed_none
  doc: Random seed (None).
  type: string
  inputBinding:
    prefix: -z
- id: output_fast_a
  doc: 'Output fasta (default: stdout)'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- simulate_sequences.py
