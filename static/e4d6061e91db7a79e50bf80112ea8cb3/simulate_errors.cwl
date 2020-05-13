class: CommandLineTool
id: simulate_errors.py.cwl
inputs:
- id: input_fast_a
  doc: 'Input fasta (default: stdin).'
  type: string
  inputBinding:
    position: 0
- id: output_fast_a
  doc: 'Output fasta (default: stdout)'
  type: string
  inputBinding:
    position: 1
- id: e
  doc: Total rate of substitutions insertions and deletions (0.1).
  type: string
  inputBinding:
    prefix: -e
- id: w
  doc: Relative frequency of substitutions,insertions,deletions (1,1,4).
  type: string
  inputBinding:
    prefix: -w
- id: z
  doc: Random seed (None).
  type: string
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- simulate_errors.py
