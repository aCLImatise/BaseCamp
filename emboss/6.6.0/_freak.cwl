class: CommandLineTool
id: _freak.cwl
inputs:
- id: letters
  doc: string     [gc] Residue letters (Any string)
  type: boolean
  inputBinding:
    prefix: -letters
outputs: []
cwlVersion: v1.1
baseCommand:
- _freak
