class: CommandLineTool
id: nebulizer_list_libraries_PATH.cwl
inputs:
- id: l
  doc: use a long listing format that includes ids, descriptions, file sizes, dbkeys
    and paths)
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- list_libraries
- PATH
