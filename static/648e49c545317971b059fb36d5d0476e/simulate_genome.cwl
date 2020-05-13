class: CommandLineTool
id: simulate_genome.py.cwl
inputs:
- id: output_fast_a
  doc: 'Output fasta (default: stdout)'
  type: string
  inputBinding:
    position: 0
- id: n
  doc: Number of chromosomes (23).
  type: string
  inputBinding:
    prefix: -n
- id: m
  doc: Mean length of chromosomes (5000000).
  type: string
  inputBinding:
    prefix: -m
- id: a
  doc: Gamma shape parameter (1).
  type: string
  inputBinding:
    prefix: -a
- id: l
  doc: Lower truncation point (None).
  type: string
  inputBinding:
    prefix: -l
- id: u
  doc: Upper truncation point (None).
  type: string
  inputBinding:
    prefix: -u
- id: b
  doc: Relative base frequencies in A,C,G,T order (1,1,1,1) or "random".
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
- simulate_genome.py
