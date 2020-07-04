class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/df.cwl
inputs:
- id: local
  doc: listing to local file systems
  type: string
  inputBinding:
    prefix: --local
- id: no_sync
  doc: not invoke sync before getting usage info (default)
  type: string
  inputBinding:
    prefix: --no-sync
- id: output
  doc: '[=FIELD_LIST]  use the output format defined by FIELD_LIST, or print all fields
    if FIELD_LIST is omitted.'
  type: boolean
  inputBinding:
    prefix: --output
- id: portability
  doc: use the POSIX output format
  type: boolean
  inputBinding:
    prefix: --portability
- id: sync
  doc: invoke sync before getting usage info
  type: boolean
  inputBinding:
    prefix: --sync
- id: total
  doc: elide all entries insignificant to available space, and produce a grand total
  type: boolean
  inputBinding:
    prefix: --total
- id: type
  doc: limit listing to file systems of type TYPE
  type: string
  inputBinding:
    prefix: --type
- id: print_type
  doc: print file system type
  type: boolean
  inputBinding:
    prefix: --print-type
- id: exclude_type
  doc: limit listing to file systems not of type TYPE
  type: string
  inputBinding:
    prefix: --exclude-type
- id: ignored
  doc: (ignored)
  type: boolean
  inputBinding:
    prefix: -v
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- df
