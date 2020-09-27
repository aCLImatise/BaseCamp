class: CommandLineTool
id: nebulizer_create_library_folder_GALAXY..cwl
inputs:
- id: in_nebulizer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_create_library_folder
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_galaxy
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_library_folder
- GALAXY.
