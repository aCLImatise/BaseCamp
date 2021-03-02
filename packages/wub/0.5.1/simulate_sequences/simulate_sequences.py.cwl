class: CommandLineTool
id: simulate_sequences.py.cwl
inputs:
- id: in_number_of_sequences
  doc: Number of sequences (1).
  type: long?
  inputBinding:
    prefix: -n
- id: in_length_simulated_sequences
  doc: Length of simulated sequences (3000).
  type: long?
  inputBinding:
    prefix: -m
- id: in_relative_base_frequencies
  doc: Relative base frequencies in A,C,G,T order (1,1,1,1).
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- simulate_sequences.py
