class: CommandLineTool
id: parsec_histories_upload_dataset_from_library.cwl
inputs:
- id: in_lib_dataset_id
  doc: Upload a dataset into the history from a library. Requires the library
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
- histories
- upload_dataset_from_library
