class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/CCAT.cwl
inputs:
- id: library_one_tag_file_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: library_two_tag_file_name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: chromosome_length_file_name
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
