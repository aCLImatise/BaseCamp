class: CommandLineTool
id: ../../../arrow_annotations_get_feature_sequence.cwl
inputs:
- id: in_organism
  doc: Organism Common Name
  type: string
  inputBinding:
    prefix: --organism
- id: in_sequence
  doc: Sequence Name
  type: string
  inputBinding:
    prefix: --sequence
- id: in_feature_id
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arrow
- annotations
- get_feature_sequence
