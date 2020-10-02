class: CommandLineTool
id: import_html_template.cwl
inputs:
- id: in_variable_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_name
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- import-html-template
