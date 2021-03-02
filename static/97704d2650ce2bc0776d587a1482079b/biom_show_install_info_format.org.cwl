class: CommandLineTool
id: biom_show_install_info_format.org.cwl
inputs:
- id: in_biom
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_show_install_info
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- biom
- show-install-info
- format.org
