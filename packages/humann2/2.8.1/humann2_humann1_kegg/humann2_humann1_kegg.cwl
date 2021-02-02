class: CommandLineTool
id: humann2_humann1_kegg.cwl
inputs:
- id: in_var_0
  doc: '[IGENELS]'
  type: boolean
  inputBinding:
    prefix: --igenels
- id: in_i_kegg_trans
  doc: '[IKEGGTRANS]'
  type: boolean
  inputBinding:
    prefix: --ikeggtrans
- id: in_i_koc
  doc: '[IKOC]'
  type: boolean
  inputBinding:
    prefix: --ikoc
- id: in_o
  doc: '[O]'
  type: boolean
  inputBinding:
    prefix: --o
- id: in_var_4
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- humann2_humann1_kegg
