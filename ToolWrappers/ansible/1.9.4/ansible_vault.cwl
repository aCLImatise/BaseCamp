class: CommandLineTool
id: ansible_vault.cwl
inputs:
- id: in_create_vertical_line_decrypt_vertical_line_edit_vertical_line_encrypt_vertical_line_re_key_vertical_line_view
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_file_name
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
- ansible-vault
