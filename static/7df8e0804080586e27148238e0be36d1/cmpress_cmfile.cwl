class: CommandLineTool
id: ../../../cmpress_cmfile.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- cmpress
- cmfile
