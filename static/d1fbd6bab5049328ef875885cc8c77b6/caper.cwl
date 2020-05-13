class: CommandLineTool
id: caper.cwl
inputs:
- id: conf
  doc: Specify config file
  type: File
  inputBinding:
    prefix: --conf
outputs: []
cwlVersion: v1.1
baseCommand:
- caper
