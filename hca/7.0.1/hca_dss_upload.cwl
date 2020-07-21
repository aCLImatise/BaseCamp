class: CommandLineTool
id: ../../../hca_dss_upload.cwl
inputs:
- id: src_dir
  doc: ''
  type: string
  inputBinding:
    prefix: --src-dir
- id: replica
  doc: ''
  type: string
  inputBinding:
    prefix: --replica
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- upload
