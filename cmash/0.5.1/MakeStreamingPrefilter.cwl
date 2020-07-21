class: CommandLineTool
id: ../../../MakeStreamingPrefilter.py_range.cwl
inputs:
- id: make_streaming_prefilter_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: range
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- MakeStreamingPrefilter.py
- range
