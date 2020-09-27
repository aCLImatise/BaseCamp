class: CommandLineTool
id: pyfastx_stat_fastx.cwl
inputs:
- id: in_py_fast_x
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pyfastx
- stat
- fastx
