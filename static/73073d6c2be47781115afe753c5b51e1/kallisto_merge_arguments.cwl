class: CommandLineTool
id: kallisto_merge_arguments.cwl
inputs:
- id: ouput_directories
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- kallisto
- merge
- arguments
