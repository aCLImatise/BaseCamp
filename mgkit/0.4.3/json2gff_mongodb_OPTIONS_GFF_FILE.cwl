class: CommandLineTool
id: json2gff_mongodb_OPTIONS_GFF_FILE.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gff_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- json2gff
- mongodb
- OPTIONS
- GFF_FILE
