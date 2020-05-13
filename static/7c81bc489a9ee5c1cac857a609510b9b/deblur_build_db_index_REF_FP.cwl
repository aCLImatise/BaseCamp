class: CommandLineTool
id: deblur_build_db_index_REF_FP.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_fp
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- deblur
- build-db-index
- REF_FP
