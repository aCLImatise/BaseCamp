class: CommandLineTool
id: jhsdb_jsnap.cwl
inputs:
- id: in_all
  doc: to print all performance counters
  type: boolean?
  inputBinding:
    prefix: --all
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
- jsnap
