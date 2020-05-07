class: CommandLineTool
id: kallisto_merge_ouput_directories.cwl
inputs:
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ouput_directories
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- kallisto
- merge
- ouput-directories
