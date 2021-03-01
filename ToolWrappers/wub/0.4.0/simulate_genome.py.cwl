class: CommandLineTool
id: simulate_genome.py.cwl
inputs:
- id: in_number_of_chromosomes
  doc: Number of chromosomes (23).
  type: long?
  inputBinding:
    prefix: -n
- id: in_mean_length_chromosomes
  doc: Mean length of chromosomes (5000000).
  type: long?
  inputBinding:
    prefix: -m
- id: in_gamma_shape_parameter
  doc: Gamma shape parameter (1).
  type: long?
  inputBinding:
    prefix: -a
- id: in_lower_truncation_point
  doc: Lower truncation point (None).
  type: string?
  inputBinding:
    prefix: -l
- id: in_upper_truncation_point
  doc: Upper truncation point (None).
  type: string?
  inputBinding:
    prefix: -u
- id: in_relative_base_frequencies
  doc: "Relative base frequencies in A,C,G,T order (1,1,1,1) or\n\"random\"."
  type: long?
  inputBinding:
    prefix: -b
- id: in_random_seed_none
  doc: Random seed (None).
  type: string?
  inputBinding:
    prefix: -z
- id: in_output_fast_a
  doc: 'Output fasta (default: stdout)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- simulate_genome.py
