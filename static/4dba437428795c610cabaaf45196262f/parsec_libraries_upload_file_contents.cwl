class: CommandLineTool
id: parsec_libraries_upload_file_contents.cwl
inputs:
- id: in_folder_id
  doc: "id of the folder where to place the uploaded file. If not\nprovided, the root\
    \ folder will be used"
  type: File?
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
- id: in_tags
  doc: A list of tags to add to the datasets
  type: string?
  inputBinding:
    prefix: --tags
- id: in_pasted_content
  doc: Upload pasted_content to a data library as a new file.
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
- upload_file_contents
