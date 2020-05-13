class: CommandLineTool
id: tango_build.cwl
inputs:
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- tango
- build
