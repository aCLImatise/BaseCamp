class: CommandLineTool
id: simulate_sequences.py.cwl
inputs:
- id: output_fast_a
  doc: 'Output fasta (default: stdout)'
  type: string
  inputBinding:
    position: 0
- id: n
  doc: Number of sequences (1).
  type: string
  inputBinding:
    prefix: -n
- id: m
  doc: Length of simulated sequences (3000).
  type: long
  inputBinding:
    prefix: -m
- id: b
  doc: Relative base frequencies in A,C,G,T order (1,1,1,1).
  type: string
  inputBinding:
    prefix: -b
- id: z
  doc: Random seed (None).
  type: string
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- simulate_sequences.py
