class: CommandLineTool
id: humann2_humann1_kegg.cwl
inputs:
- id: i_gene_ls
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
- id: ikeggorgid2org_name
  doc: '[IKEGGORGID2ORGNAME]'
  type: boolean
  inputBinding:
    prefix: --ikeggOrgId2OrgName
- id: o
  doc: '[O]'
  type: boolean
  inputBinding:
    prefix: --o
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_humann1_kegg
