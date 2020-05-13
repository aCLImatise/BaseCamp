class: CommandLineTool
id: deblur_build_db_index_OPTIONS_OUTPUT_DIR.cwl
inputs:
- id: ref_fp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- deblur
- build-db-index
- OPTIONS
- OUTPUT_DIR
