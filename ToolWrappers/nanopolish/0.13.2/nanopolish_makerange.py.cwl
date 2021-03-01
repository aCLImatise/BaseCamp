class: CommandLineTool
id: nanopolish_makerange.py.cwl
inputs:
- id: in_segment_length
  doc: ''
  type: long?
  inputBinding:
    prefix: --segment-length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nanopolish_makerange.py
