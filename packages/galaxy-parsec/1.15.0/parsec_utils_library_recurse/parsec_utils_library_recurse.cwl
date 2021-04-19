class: CommandLineTool
id: parsec_utils_library_recurse.cwl
inputs:
- id: in_path
  doc: Folder path to filter on (otherwise root of repo)
  type: File?
  inputBinding:
    prefix: --path
- id: in_library_id
  doc: ''
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
- utils
- library_recurse
