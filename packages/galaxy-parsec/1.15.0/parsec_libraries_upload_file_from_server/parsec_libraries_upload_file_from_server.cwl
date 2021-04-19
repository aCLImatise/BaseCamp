class: CommandLineTool
id: parsec_libraries_upload_file_from_server.cwl
inputs:
- id: in_folder_id
  doc: "id of the folder where to place the uploaded files.\nIf not provided, the\
    \ root folder will be used"
  type: Directory?
  inputBinding:
    prefix: --folder_id
- id: in_file_type
  doc: 'Galaxy file format name  [default: auto]'
  type: File?
  inputBinding:
    prefix: --file_type
- id: in_db_key
  doc: 'Dbkey  [default: ?]'
  type: string?
  inputBinding:
    prefix: --dbkey
- id: in_link_data_only
  doc: "either 'copy_files' (default) or 'link_to_files'.\nSetting to 'link_to_files'\
    \ symlinks instead of\ncopying the files"
  type: string?
  inputBinding:
    prefix: --link_data_only
- id: in_preserve_dirs
  doc: "Indicate whether to preserve the directory structure\nwhen importing dir"
  type: boolean?
  inputBinding:
    prefix: --preserve_dirs
- id: in_tag_using_filenames
  doc: Indicate whether to generate dataset tags from
  type: boolean?
  inputBinding:
    prefix: --tag_using_filenames
- id: in_server_dir
  doc: Upload all files in the specified subdirectory of the Galaxy library
  type: string
  inputBinding:
    position: 0
- id: in_filenames_dot
  doc: --tags TEXT            A list of tags to add to the datasets
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- libraries
- upload_file_from_server
