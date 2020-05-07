class: CommandLineTool
id: kallisto_inspect.cwl
inputs:
- id: index_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- kallisto
- inspect
