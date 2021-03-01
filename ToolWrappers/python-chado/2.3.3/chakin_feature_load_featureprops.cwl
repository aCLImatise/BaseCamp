class: CommandLineTool
id: chakin_feature_load_featureprops.cwl
inputs:
- id: in_feature_type
  doc: "Type of the target features in sequence ontology (will\nspeed up loading if\
    \ specified)"
  type: string?
  inputBinding:
    prefix: --feature_type
- id: in_match_on_name
  doc: Match features using their name instead of their
  type: boolean?
  inputBinding:
    prefix: --match_on_name
- id: in_unique_name
  doc: -h, --help           Show this message and exit.
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
- load_featureprops
