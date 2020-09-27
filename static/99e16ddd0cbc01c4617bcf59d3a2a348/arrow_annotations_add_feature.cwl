class: CommandLineTool
id: arrow_annotations_add_feature.cwl
inputs:
- id: in_feature
  doc: Feature information
  type: string
  inputBinding:
    prefix: --feature
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arrow
- annotations
- add_feature
