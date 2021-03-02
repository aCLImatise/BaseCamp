class: CommandLineTool
id: removeRedundant.cwl
inputs:
- id: in_gff_three
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -gff3
- id: in_polishes_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- removeRedundant
