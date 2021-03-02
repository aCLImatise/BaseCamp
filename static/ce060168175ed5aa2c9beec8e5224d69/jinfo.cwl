class: CommandLineTool
id: jinfo.cwl
inputs:
- id: in_flags
  doc: to print VM flags
  type: boolean?
  inputBinding:
    prefix: -flags
- id: in_sys_props
  doc: to print Java system properties
  type: boolean?
  inputBinding:
    prefix: -sysprops
- id: in_option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pid
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jinfo
