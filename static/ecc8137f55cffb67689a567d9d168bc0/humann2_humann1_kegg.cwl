class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/humann2_humann1_kegg.cwl
inputs:
- id: var_0
  doc: '[IGENELS]'
  type: boolean
  inputBinding:
    prefix: --igenels
- id: i_kegg_trans
  doc: '[IKEGGTRANS]'
  type: boolean
  inputBinding:
    prefix: --ikeggtrans
- id: i_koc
  doc: '[IKOC]'
  type: boolean
  inputBinding:
    prefix: --ikoc
- id: i_kegg_orgid_two_orgname
  doc: '[IKEGGORGID2ORGNAME]'
  type: boolean
  inputBinding:
    prefix: --ikeggOrgId2OrgName
- id: o
  doc: '[O]'
  type: boolean
  inputBinding:
    prefix: --o
- id: var_5
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_humann1_kegg
