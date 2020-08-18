class: CommandLineTool
id: ../../../transabyss_merge_PATH.cwl
inputs:
- id: mink
  doc: ''
  type: long
  inputBinding:
    prefix: --mink
- id: max_k
  doc: ''
  type: long
  inputBinding:
    prefix: --maxk
- id: trans_abyss_merge
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- transabyss-merge
- PATH
