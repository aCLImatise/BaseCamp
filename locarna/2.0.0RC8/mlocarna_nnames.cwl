class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mlocarna_nnames.cwl
inputs:
- id: man
  doc: Full documentation
  type: boolean
  inputBinding:
    prefix: --man
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mlocarna_nnames
