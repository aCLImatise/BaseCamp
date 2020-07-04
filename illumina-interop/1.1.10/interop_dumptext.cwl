class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/interop_dumptext.cwl
inputs:
- id: subset
  doc: '[0]: Number of metrics to subsample'
  type: boolean
  inputBinding:
    prefix: --subset
- id: metric
  doc: '[]: Name of metric to load, e.g. --metric=Tile to load TileMetricsOut.bin'
  type: boolean
  inputBinding:
    prefix: --metric
- id: option_one
  doc: ''
  type: string
  inputBinding:
    prefix: --option1
- id: option_two
  doc: ''
  type: string
  inputBinding:
    prefix: --option2
- id: run_folder
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- interop_dumptext
