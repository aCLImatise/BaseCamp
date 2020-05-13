class: CommandLineTool
id: CCAT.cwl
inputs:
- id: library_1tag_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: library_2tag_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: chromosome_length_filename
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: config_file_name
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: project_name
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- CCAT
