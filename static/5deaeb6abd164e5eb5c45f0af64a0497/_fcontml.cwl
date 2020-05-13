class: CommandLineTool
id: _fcontml.cwl
inputs:
- id: datatype
  doc: 'menu       [g] Input type in infile (Values: g (Gene frequencies); i (Continuous
    characters))'
  type: boolean
  inputBinding:
    prefix: -datatype
outputs: []
cwlVersion: v1.1
baseCommand:
- _fcontml
