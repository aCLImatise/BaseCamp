class: CommandLineTool
id: start_asap.cwl
inputs:
- id: in_subdirectory_dot
  doc: '*-ft*, *--for-tag* STRING'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- start-asap
