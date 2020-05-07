class: CommandLineTool
id: mendelscan.cwl
inputs:
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
outputs: []
cwlVersion: v1.1
baseCommand:
- mendelscan
