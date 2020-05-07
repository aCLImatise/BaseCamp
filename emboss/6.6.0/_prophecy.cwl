class: CommandLineTool
id: _prophecy.cwl
inputs:
- id: type
  doc: 'menu       [F] Select type (Values: F (Frequency); G (Gribskov); H (Henikoff))'
  type: boolean
  inputBinding:
    prefix: -type
- id: name
  doc: string     [mymatrix] Enter a name for the profile (Any string)
  type: boolean
  inputBinding:
    prefix: -name
outputs: []
cwlVersion: v1.1
baseCommand:
- _prophecy
