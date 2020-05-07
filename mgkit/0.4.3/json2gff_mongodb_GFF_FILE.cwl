class: CommandLineTool
id: json2gff_mongodb_GFF_FILE.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: gff_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- json2gff
- mongodb
- GFF_FILE
