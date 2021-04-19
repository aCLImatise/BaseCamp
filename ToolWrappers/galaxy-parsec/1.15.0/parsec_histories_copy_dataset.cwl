class: CommandLineTool
id: parsec_histories_copy_dataset.cwl
inputs:
- id: in_source
  doc: "Source of the dataset to be copied: 'hda' (the default),\n'library' or 'library_folder'\
    \  [default: hda]"
  type: string?
  inputBinding:
    prefix: --source
- id: in_history_id
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dataset_id
  doc: ''
  type: string
  inputBinding:
    position: 1
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
- copy_dataset
