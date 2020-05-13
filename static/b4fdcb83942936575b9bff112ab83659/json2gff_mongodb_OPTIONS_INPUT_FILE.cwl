class: CommandLineTool
id: json2gff_mongodb_OPTIONS_INPUT_FILE.cwl
inputs:
- id: gff_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- json2gff
- mongodb
- OPTIONS
- INPUT_FILE
