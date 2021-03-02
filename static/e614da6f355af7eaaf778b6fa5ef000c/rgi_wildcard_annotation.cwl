class: CommandLineTool
id: rgi_wildcard_annotation.cwl
inputs:
- id: in_input_directory
  doc: input directory for wildcard
  type: Directory?
  inputBinding:
    prefix: --input_directory
- id: in_card_json
  doc: "card.json file\n"
  type: File?
  inputBinding:
    prefix: --card_json
- id: in_v
  doc: ''
  type: string?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rgi
- wildcard_annotation
