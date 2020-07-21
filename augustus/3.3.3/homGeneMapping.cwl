class: CommandLineTool
id: ../../../homGeneMapping.cwl
inputs:
- id: gt_fs
  doc: ''
  type: string
  inputBinding:
    prefix: --gtfs
- id: hal_file
  doc: ''
  type: string
  inputBinding:
    prefix: --halfile
outputs: []
cwlVersion: v1.1
baseCommand:
- homGeneMapping
