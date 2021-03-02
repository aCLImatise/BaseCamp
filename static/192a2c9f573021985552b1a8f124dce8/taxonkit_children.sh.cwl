class: CommandLineTool
id: taxonkit_children.sh.cwl
inputs:
- id: in_file_tax_ids
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_path_to_folder_with_taxonomy
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- taxonkit_children.sh
