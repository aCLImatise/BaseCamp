class: CommandLineTool
id: ../../../oncogemini_db_info_db.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: annotation_dir
  doc: ''
  type: string
  inputBinding:
    prefix: --annotation-dir
- id: on_co_gemini
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- oncogemini
- db_info
- db
