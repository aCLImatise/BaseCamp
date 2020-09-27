class: CommandLineTool
id: deblur_build_db_index_5_critical.cwl
inputs:
- id: in_de_blur
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_build_db_index
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_ref_fp
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_dir
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deblur
- build-db-index
- 5-critical
