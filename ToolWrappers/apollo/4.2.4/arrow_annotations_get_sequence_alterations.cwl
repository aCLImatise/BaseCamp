class: CommandLineTool
id: arrow_annotations_get_sequence_alterations.cwl
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arrow
- annotations
- get_sequence_alterations
