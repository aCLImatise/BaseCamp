class: CommandLineTool
id: batchcoverage_outputfile.cwl
inputs:
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- batchcoverage
- outputfile
