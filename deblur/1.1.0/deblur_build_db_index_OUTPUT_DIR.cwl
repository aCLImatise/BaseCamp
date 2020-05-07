class: CommandLineTool
id: deblur_build_db_index_OUTPUT_DIR.cwl
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
- OUTPUT_DIR
