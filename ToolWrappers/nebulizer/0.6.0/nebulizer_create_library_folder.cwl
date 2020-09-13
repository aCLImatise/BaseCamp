class: CommandLineTool
id: ../../../nebulizer_create_library_folder.cwl
inputs:
- id: in_description
  doc: description of the new folder
  type: Directory
  inputBinding:
    prefix: --description
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_library_folder
