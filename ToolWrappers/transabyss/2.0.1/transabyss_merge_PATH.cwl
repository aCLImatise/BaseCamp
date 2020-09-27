class: CommandLineTool
id: transabyss_merge_PATH.cwl
inputs:
- id: in_max_k
  doc: ''
  type: long
  inputBinding:
    prefix: --maxk
- id: in_mink
  doc: ''
  type: long
  inputBinding:
    prefix: --mink
- id: in_trans_abyss_merge
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
- transabyss-merge
- PATH
