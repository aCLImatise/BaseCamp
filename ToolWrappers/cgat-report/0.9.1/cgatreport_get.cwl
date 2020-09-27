class: CommandLineTool
id: cgatreport_get.cwl
inputs:
- id: in_verbose
  doc: loglevel. The higher, the more output [default=2]
  type: long
  inputBinding:
    prefix: --verbose
- id: in_view
  doc: view keys in cache [default=False]
  type: boolean
  inputBinding:
    prefix: --view
- id: in_tracker
  doc: tracker to use [default=none]
  type: string
  inputBinding:
    prefix: --tracker
- id: in_tracks
  doc: tracks to include [default=none]
  type: string
  inputBinding:
    prefix: --tracks
- id: in_slices
  doc: slices to include [default=none]
  type: string
  inputBinding:
    prefix: --slices
- id: in_group_by
  doc: groupby by track or slice [default=slice]
  type: string
  inputBinding:
    prefix: --groupby
- id: in_format
  doc: "output format [default=tsv]\n"
  type: string
  inputBinding:
    prefix: --format
- id: in_python
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cgatreport-get
