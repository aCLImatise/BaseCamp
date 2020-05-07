class: CommandLineTool
id: pepcoil.cwl
inputs:
- id: window
  doc: integer    [28] Window size (Integer from 7 to 28)
  type: boolean
  inputBinding:
    prefix: -window
- id: r_format
  doc: )
  type: string
  inputBinding:
    prefix: -rformat
outputs: []
cwlVersion: v1.1
baseCommand:
- pepcoil
