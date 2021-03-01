class: CommandLineTool
id: jhsdb_debugd.cwl
inputs:
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sun_dot_jvm_dot_hotspot_dot_debug_server
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_pid
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_server
  doc: ''
  type: string?
  inputBinding:
    position: 3
- id: in_id
  doc: ''
  type: string?
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jhsdb
- debugd
