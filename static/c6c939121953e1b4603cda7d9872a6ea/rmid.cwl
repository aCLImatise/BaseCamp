class: CommandLineTool
id: rmid.cwl
inputs:
- id: in_port
  doc: Specify port for rmid to use
  type: string?
  inputBinding:
    prefix: -port
- id: in_log
  doc: Specify directory in which rmid writes log
  type: Directory?
  inputBinding:
    prefix: -log
- id: in_stop
  doc: Stop current invocation of rmid (for specified port)
  type: boolean?
  inputBinding:
    prefix: -stop
- id: in_runtime_flag_each
  doc: <runtime flag>    Pass argument to each child process (activation group)
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_runtime_flag_the
  doc: <runtime flag>    Pass argument to the java interpreter
  type: boolean?
  inputBinding:
    prefix: -J
- id: in_options
  doc: ''
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
- rmid
