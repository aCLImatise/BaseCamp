class: CommandLineTool
id: arrow_annotations_load_legacy_gff3.cwl
inputs:
- id: in_source
  doc: URL where the input dataset can be found.
  type: string?
  inputBinding:
    prefix: --source
- id: in_organism
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gff_three
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arrow
- annotations
- load_legacy_gff3
