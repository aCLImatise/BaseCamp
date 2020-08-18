class: CommandLineTool
id: ../../../simulate_genome.py.cwl
inputs:
- id: number_of_chromosomes
  doc: Number of chromosomes (23).
  type: string
  inputBinding:
    prefix: -n
- id: mean_length_chromosomes
  doc: Mean length of chromosomes (5000000).
  type: string
  inputBinding:
    prefix: -m
- id: gamma_shape_parameter
  doc: Gamma shape parameter (1).
  type: string
  inputBinding:
    prefix: -a
- id: lower_truncation_point
  doc: Lower truncation point (None).
  type: string
  inputBinding:
    prefix: -l
- id: upper_truncation_point
  doc: Upper truncation point (None).
  type: string
  inputBinding:
    prefix: -u
- id: relative_base_frequencies
  doc: Relative base frequencies in A,C,G,T order (1,1,1,1) or "random".
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
- simulate_genome.py
