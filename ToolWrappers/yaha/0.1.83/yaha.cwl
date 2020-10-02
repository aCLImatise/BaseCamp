class: CommandLineTool
id: yaha.cwl
inputs:
- id: in_o_eight
  doc: produces alignment output in modified Blast8 format.
  type: boolean
  inputBinding:
    prefix: -o8
- id: in_osh
  doc: produces alignment output in SAM format with hard clipping.
  type: boolean
  inputBinding:
    prefix: -osh
- id: in_oss
  doc: produces alignment output in SAM format with soft clipping.
  type: boolean
  inputBinding:
    prefix: -oss
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- yaha
