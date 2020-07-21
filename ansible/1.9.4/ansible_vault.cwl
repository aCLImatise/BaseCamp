class: CommandLineTool
id: ../../../ansible_vault.cwl
inputs:
- id: create_vertical_line_decrypt_vertical_line_edit_vertical_line_encrypt_vertical_line_re_key_vertical_line_view
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
- ansible-vault
