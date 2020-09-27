class: CommandLineTool
id: tripaille_feature_get_features.cwl
inputs:
- id: in_feature_id
  doc: A feature entity/node ID
  type: long
  inputBinding:
    prefix: --feature_id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
- feature
- get_features
