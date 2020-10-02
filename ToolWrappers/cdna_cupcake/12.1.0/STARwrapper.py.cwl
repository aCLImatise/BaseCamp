class: CommandLineTool
id: STARwrapper.py.cwl
inputs:
- id: in_cpus
  doc: ''
  type: string
  inputBinding:
    prefix: --cpus
- id: in_wrapper
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_running
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_star_long_dot
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
- STARwrapper.py
