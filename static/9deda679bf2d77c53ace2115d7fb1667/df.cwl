class: CommandLineTool
id: df.cwl
inputs:
- id: all
  doc: include pseudo, duplicate, inaccessible file systems
  type: boolean
  inputBinding:
    prefix: --all
- id: block_size
  doc: scale sizes by SIZE before printing them; e.g., '-BM' prints sizes in units
    of 1,048,576 bytes; see SIZE format below
  type: long
  inputBinding:
    prefix: --block-size
- id: si
  doc: print sizes in powers of 1000 (e.g., 1.1G)
  type: boolean
  inputBinding:
    prefix: --si
- id: inodes
  doc: inode information instead of block usage
  type: string
  inputBinding:
    prefix: --inodes
- id: block_size
  doc: =1K
  type: string
  inputBinding:
    prefix: --block-size
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
- id: v
  doc: (ignored)
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- df
