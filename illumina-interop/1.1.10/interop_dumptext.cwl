class: CommandLineTool
id: interop_dumptext.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- interop_dumptext
