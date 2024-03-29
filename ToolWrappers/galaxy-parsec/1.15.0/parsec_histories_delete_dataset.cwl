class: CommandLineTool
id: parsec_histories_delete_dataset.cwl
inputs:
- id: in_purge
  doc: if ``True``, also purge (permanently delete) the dataset
  type: boolean?
  inputBinding:
    prefix: --purge
- id: in_none
  doc: ".. note::             For the purge option to work, the Galaxy\ninstance must\
    \ have the             ``allow_user_dataset_purge``\noption set to ``true`` in\
    \ the             ``config/galaxy.yml``\nconfiguration file."
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
- delete_dataset
