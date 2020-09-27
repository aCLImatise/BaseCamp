class: CommandLineTool
id: MakeStreamingPrefilter.py_out_file.cwl
inputs:
- id: in_make_streaming_prefilter_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reference_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_range
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MakeStreamingPrefilter.py
- out_file
