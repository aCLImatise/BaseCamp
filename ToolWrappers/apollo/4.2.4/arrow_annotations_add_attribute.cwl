class: CommandLineTool
id: arrow_annotations_add_attribute.cwl
inputs:
- id: in_organism
  doc: Organism Common Name
  type: string?
  inputBinding:
    prefix: --organism
- id: in_sequence
  doc: Sequence Name
  type: string?
  inputBinding:
    prefix: --sequence
- id: in_attribute_value
  doc: Add an attribute to a feature
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
- arrow
- annotations
- add_attribute
