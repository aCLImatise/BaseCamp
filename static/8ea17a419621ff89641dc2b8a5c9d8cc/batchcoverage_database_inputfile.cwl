class: CommandLineTool
id: batchcoverage_database_inputfile.cwl
inputs:
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- batchcoverage
- database
- inputfile
