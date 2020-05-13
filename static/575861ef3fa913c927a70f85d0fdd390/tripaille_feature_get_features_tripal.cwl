class: CommandLineTool
id: tripaille_feature_get_features_tripal.cwl
inputs:
- id: feature_id
  doc: A feature entity/node ID
  type: long
  inputBinding:
    prefix: --feature_id
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- feature
- get_features_tripal
