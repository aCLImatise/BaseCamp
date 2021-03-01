class: CommandLineTool
id: trace_dump.cwl
inputs:
- id: in_trace_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- trace_dump
