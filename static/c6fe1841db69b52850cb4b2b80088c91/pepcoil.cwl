class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pepcoil.cwl
inputs:
- id: window
  doc: integer    [28] Window size (Integer from 7 to 28)
  type: boolean
  inputBinding:
    prefix: -window
outputs: []
cwlVersion: v1.1
baseCommand:
- pepcoil
