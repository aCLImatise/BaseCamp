class: CommandLineTool
id: add_errors.py.cwl
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
- id: n
  doc: Number of errors to introduce (0).
  type: string
  inputBinding:
    prefix: -n
- id: t
  doc: 'Error type: substitution, insertion or deletion.'
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- add_errors.py
