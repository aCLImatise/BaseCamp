class: CommandLineTool
id: json2gff_mongodb.cwl
inputs:
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_gff_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- json2gff
- mongodb
