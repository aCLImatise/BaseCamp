class: CommandLineTool
id: nebulizer_add_library_datasets.cwl
inputs:
- id: in_file_type
  doc: "Galaxy data type to assign the files to (default is\n'auto'). Must be a valid\
    \ Galaxy data type. If not 'auto'\nthen all files will be assigned the same type."
  type: File
  inputBinding:
    prefix: --file-type
- id: in_db_key
  doc: dbkey to assign to files (default is '?')
  type: string
  inputBinding:
    prefix: --dbkey
- id: in_server
  doc: "upload files from the Galaxy server file system (default\nis to upload files\
    \ from local system)"
  type: boolean
  inputBinding:
    prefix: --server
- id: in_link
  doc: "create symlinks to files on server (only valid if used\nwith --server; default\
    \ is to copy files into Galaxy)"
  type: boolean
  inputBinding:
    prefix: --link
- id: in_galaxy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dest
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nebulizer
- add_library_datasets
