class: CommandLineTool
id: advntr_delmodel_addmodel.cwl
inputs:
- id: in_vid_slash_vntr_id
  doc: VNTR ID
  type: string
  inputBinding:
    prefix: -vid/--vntr_id
- id: in_m_slash_models
  doc: VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]
  type: File
  inputBinding:
    prefix: -m/--models
- id: in_h_slash_help
  doc: show this help message and exit
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_ad_vntr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_del_model
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
- advntr
- delmodel
- addmodel
