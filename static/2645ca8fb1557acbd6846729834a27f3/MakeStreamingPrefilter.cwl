class: CommandLineTool
id: MakeStreamingPrefilter.py_range.cwl
inputs:
- id: reference_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: range
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- MakeStreamingPrefilter.py
- range
