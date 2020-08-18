class: CommandLineTool
id: ../../../nib_intervals_to_fasta.py.cwl
inputs:
- id: range_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: nib_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nib_intervals_to_fasta.py
