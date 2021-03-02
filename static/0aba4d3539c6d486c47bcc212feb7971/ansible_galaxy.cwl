class: CommandLineTool
id: ansible_galaxy.cwl
inputs:
- id: in_in_it_vertical_line_info_vertical_line_install_vertical_line_list_vertical_line_remove
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ansible-galaxy
