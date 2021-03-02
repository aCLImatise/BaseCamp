class: CommandLineTool
id: jhsdb_jinfo.cwl
inputs:
- id: in_flags
  doc: to print VM flags
  type: boolean?
  inputBinding:
    prefix: --flags
- id: in_sys_props
  doc: to print Java System properties
  type: boolean?
  inputBinding:
    prefix: --sysprops
- id: in_exe
  doc: executable image name
  type: boolean?
  inputBinding:
    prefix: --exe
- id: in_core
  doc: path to coredump
  type: boolean?
  inputBinding:
    prefix: --core
- id: in_pid
  doc: pid of process to attach
  type: boolean?
  inputBinding:
    prefix: --pid
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jhsdb
- jinfo
