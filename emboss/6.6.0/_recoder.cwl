class: CommandLineTool
id: ../../../_recoder.cwl
inputs:
- id: in_enzymes
  doc: "string     [all] Comma separated enzyme list (Any\nstring)"
  type: boolean
  inputBinding:
    prefix: -enzymes
- id: in_r_format
  doc: )
  type: string
  inputBinding:
    prefix: -rformat
- id: in_s_show
  doc: boolean    [N] Display untranslated sequence
  type: boolean
  inputBinding:
    prefix: -sshow
- id: in_t_show
  doc: boolean    [N] Display translated sequence
  type: boolean
  inputBinding:
    prefix: -tshow
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _recoder
