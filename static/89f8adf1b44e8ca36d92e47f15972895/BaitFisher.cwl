class: CommandLineTool
id: BaitFisher.cwl
inputs:
- id: in_parameter_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_gff_file_test
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- BaitFisher
