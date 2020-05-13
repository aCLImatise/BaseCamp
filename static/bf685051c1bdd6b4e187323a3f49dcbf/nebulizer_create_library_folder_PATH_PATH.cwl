class: CommandLineTool
id: nebulizer_create_library_folder_PATH_PATH.cwl
inputs:
- id: description
  doc: description of the new folder
  type: string
  inputBinding:
    prefix: --description
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- create_library_folder
- PATH
- PATH
