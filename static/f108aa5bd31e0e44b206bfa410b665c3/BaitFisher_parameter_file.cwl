class: CommandLineTool
id: BaitFisher_parameter_file.cwl
inputs:
- id: gff_file_test
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- BaitFisher
- parameter-file
