class: CommandLineTool
id: ../../../cooler_cp.cwl
inputs:
- id: in_overwrite
  doc: Truncate and replace destination file if it already exists.
  type: boolean
  inputBinding:
    prefix: --overwrite
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
- cp
