class: CommandLineTool
id: _prophecy.cwl
inputs:
- id: in_type
  doc: "menu       [F] Select type (Values: F (Frequency); G\n(Gribskov); H (Henikoff))"
  type: boolean?
  inputBinding:
    prefix: -type
- id: in_name
  doc: "string     [mymatrix] Enter a name for the profile (Any\nstring)"
  type: boolean?
  inputBinding:
    prefix: -name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _prophecy
