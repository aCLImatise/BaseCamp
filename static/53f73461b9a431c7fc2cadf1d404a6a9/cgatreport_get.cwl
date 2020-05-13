class: CommandLineTool
id: cgatreport_get.cwl
inputs:
- id: verbose
  doc: loglevel. The higher, the more output [default=2]
  type: string
  inputBinding:
    prefix: --verbose
- id: view
  doc: view keys in cache [default=False]
  type: boolean
  inputBinding:
    prefix: --view
- id: tracker
  doc: tracker to use [default=none]
  type: string
  inputBinding:
    prefix: --tracker
- id: tracks
  doc: tracks to include [default=none]
  type: string
  inputBinding:
    prefix: --tracks
- id: slices
  doc: slices to include [default=none]
  type: string
  inputBinding:
    prefix: --slices
- id: group_by
  doc: groupby by track or slice [default=slice]
  type: string
  inputBinding:
    prefix: --groupby
- id: format
  doc: output format [default=tsv]
  type: string
  inputBinding:
    prefix: --format
outputs: []
cwlVersion: v1.1
baseCommand:
- cgatreport-get
