class: CommandLineTool
id: simple_overlap.cwl
inputs:
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: a
  doc: 'Also show alignments of overlaps '
  type: boolean
  inputBinding:
    prefix: -a
- id: e
  doc: Maximum error rate for overlaps is <x> e.g., -E 0.06 for 6 0.000000e+00rror
    rate
  type: string
  inputBinding:
    prefix: -E
- id: f
  doc: Input is a fasta file
  type: boolean
  inputBinding:
    prefix: -F
- id: o
  doc: Set minimum overlap length to <n>
  type: string
  inputBinding:
    prefix: -o
- id: v
  doc: Set verbose level to <n>.  Higher produces more output.
  type: string
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- simple-overlap
