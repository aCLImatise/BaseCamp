class: CommandLineTool
id: nthseqset.cwl
inputs:
- id: in_number
  doc: "integer    [1] The number of the sequence set to output\n(Integer 1 or more)"
  type: boolean?
  inputBinding:
    prefix: -number
- id: in_feature
  doc: boolean    Use feature information
  type: boolean?
  inputBinding:
    prefix: -feature
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nthseqset
