class: CommandLineTool
id: advntr_delmodel_genotype.cwl
inputs:
- id: in_vntr_id
  doc: VNTR ID
  type: string?
  inputBinding:
    prefix: --vntr_id
- id: in_models
  doc: VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]
  type: File?
  inputBinding:
    prefix: --models
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
hints: []
cwlVersion: v1.1
baseCommand:
- advntr
- delmodel
- genotype
