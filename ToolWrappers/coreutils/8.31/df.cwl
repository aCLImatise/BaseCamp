class: CommandLineTool
id: df.cwl
inputs:
- id: in_all
  doc: include pseudo, duplicate, inaccessible file systems
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_block_size
  doc: "scale sizes by SIZE before printing them; e.g.,\n'-BM' prints sizes in units\
    \ of 1,048,576 bytes;\nsee SIZE format below"
  type: long?
  inputBinding:
    prefix: --block-size
- id: in_si
  doc: print sizes in powers of 1000 (e.g., 1.1G)
  type: boolean?
  inputBinding:
    prefix: --si
- id: in_inodes
  doc: list inode information instead of block usage
  type: boolean?
  inputBinding:
    prefix: --inodes
- id: in_like__blocksizek
  doc: like --block-size=1K
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_local
  doc: limit listing to local file systems
  type: boolean?
  inputBinding:
    prefix: --local
- id: in_no_sync
  doc: do not invoke sync before getting usage info (default)
  type: boolean?
  inputBinding:
    prefix: --no-sync
- id: in_output
  doc: "[=FIELD_LIST]  use the output format defined by FIELD_LIST,\nor print all\
    \ fields if FIELD_LIST is omitted."
  type: boolean?
  inputBinding:
    prefix: --output
- id: in_portability
  doc: use the POSIX output format
  type: boolean?
  inputBinding:
    prefix: --portability
- id: in_sync
  doc: invoke sync before getting usage info
  type: boolean?
  inputBinding:
    prefix: --sync
- id: in_total
  doc: "elide all entries insignificant to available space,\nand produce a grand total"
  type: boolean?
  inputBinding:
    prefix: --total
- id: in_type
  doc: limit listing to file systems of type TYPE
  type: File?
  inputBinding:
    prefix: --type
- id: in_print_type
  doc: print file system type
  type: boolean?
  inputBinding:
    prefix: --print-type
- id: in_exclude_type
  doc: limit listing to file systems not of type TYPE
  type: File?
  inputBinding:
    prefix: --exclude-type
- id: in_ignored
  doc: (ignored)
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- df
