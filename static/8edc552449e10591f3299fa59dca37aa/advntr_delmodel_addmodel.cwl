class: CommandLineTool
id: ../../../advntr_delmodel_addmodel.cwl
inputs:
- id: vid_slash_vntr_id
  doc: VNTR ID
  type: string
  inputBinding:
    prefix: -vid/--vntr_id
- id: m_slash_models
  doc: VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]
  type: File
  inputBinding:
    prefix: -m/--models
- id: h_slash_help
  doc: show this help message and exit
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: ad_vntr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: del_model
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- advntr
- delmodel
- addmodel
