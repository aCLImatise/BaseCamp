class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/samsifter_to.cwl
inputs:
- id: verbose
  doc: print additional information to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: show debug options in menu
  type: boolean
  inputBinding:
    prefix: --debug
- id: sam_sifter
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- samsifter
- to
