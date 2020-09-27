class: CommandLineTool
id: pathchk.cwl
inputs:
- id: in_check_most_posix
  doc: check for most POSIX systems
  type: boolean
  inputBinding:
    prefix: -p
- id: in_check_empty_names
  doc: check for empty names and leading "-"
  type: boolean
  inputBinding:
    prefix: -P
- id: in_portability
  doc: check for all POSIX systems (equivalent to -p -P)
  type: boolean
  inputBinding:
    prefix: --portability
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pathchk
