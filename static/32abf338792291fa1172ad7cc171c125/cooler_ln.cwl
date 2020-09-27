class: CommandLineTool
id: cooler_ln.cwl
inputs:
- id: in_overwrite
  doc: Truncate and replace destination file if it already exists.
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: in_soft
  doc: "Creates a soft link rather than a hard link if the source\nand destination\
    \ file are the same. Otherwise, creates an\nexternal link. This type of link uses\
    \ a path rather than a\npointer."
  type: boolean
  inputBinding:
    prefix: --soft
- id: in_src_uri
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dst_uri
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cooler
- ln
