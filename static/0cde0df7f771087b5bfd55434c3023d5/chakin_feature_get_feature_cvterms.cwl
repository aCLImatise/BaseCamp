class: CommandLineTool
id: chakin_feature_get_feature_cvterms.cwl
inputs:
- id: in_feature_id
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chakin
- feature
- get_feature_cvterms
