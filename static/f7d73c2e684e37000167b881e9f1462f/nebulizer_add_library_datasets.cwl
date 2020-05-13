class: CommandLineTool
id: nebulizer_add_library_datasets.cwl
inputs:
- id: file_type
  doc: Galaxy data type to assign the files to (default is 'auto'). Must be a valid
    Galaxy data type. If not 'auto' then all files will be assigned the same type.
  type: string
  inputBinding:
    prefix: --file-type
- id: db_key
  doc: dbkey to assign to files (default is '?')
  type: string
  inputBinding:
    prefix: --dbkey
- id: server
  doc: upload files from the Galaxy server file system (default is to upload files
    from local system)
  type: boolean
  inputBinding:
    prefix: --server
- id: link
  doc: create symlinks to files on server (only valid if used with --server; default
    is to copy files into Galaxy)
  type: boolean
  inputBinding:
    prefix: --link
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- add_library_datasets
