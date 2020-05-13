class: CommandLineTool
id: ps2epsi.cwl
inputs:
- id: multiple
  doc: support multiple arguments and treat each as a NAME
  type: boolean
  inputBinding:
    prefix: --multiple
- id: suffix
  doc: remove a trailing SUFFIX; implies -a
  type: string
  inputBinding:
    prefix: --suffix
- id: zero
  doc: end each output line with NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero
- id: multiple
  doc: support multiple arguments and treat each as a NAME
  type: boolean
  inputBinding:
    prefix: --multiple
- id: suffix
  doc: remove a trailing SUFFIX; implies -a
  type: string
  inputBinding:
    prefix: --suffix
- id: zero
  doc: end each output line with NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero
- id: dict
  doc: :1194/1684(ro)(G)--   --dict:0/20(G)--   --dict:79/200(L)--   --dict:14/30(L)--   --dict:14/30(L)--
  type: boolean
  inputBinding:
    prefix: --dict
- id: multiple
  doc: support multiple arguments and treat each as a NAME
  type: boolean
  inputBinding:
    prefix: --multiple
- id: suffix
  doc: remove a trailing SUFFIX; implies -a
  type: string
  inputBinding:
    prefix: --suffix
- id: zero
  doc: end each output line with NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero
outputs: []
cwlVersion: v1.1
baseCommand:
- ps2epsi
