class: CommandLineTool
id: ../../../import_html_template.cwl
inputs:
- id: variable_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_name
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- import-html-template
