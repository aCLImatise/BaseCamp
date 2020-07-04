class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/portcullis.cwl
inputs:
- id: print_extra_information
  doc: '[ --verbose ]      Print extra information'
  type: boolean
  inputBinding:
    prefix: -v
- id: mode
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mode_args
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- portcullis
