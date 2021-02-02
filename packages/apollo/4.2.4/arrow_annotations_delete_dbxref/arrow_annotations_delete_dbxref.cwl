class: CommandLineTool
id: arrow_annotations_delete_dbxref.cwl
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
- id: in_db
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_accession
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arrow
- annotations
- delete_dbxref
