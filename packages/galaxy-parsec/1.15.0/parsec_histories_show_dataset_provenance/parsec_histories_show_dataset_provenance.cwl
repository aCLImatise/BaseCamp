class: CommandLineTool
id: parsec_histories_show_dataset_provenance.cwl
inputs:
- id: in_follow
  doc: "If ``True``, recursively fetch dataset provenance information\nfor all inputs\
    \ and their inputs, etc."
  type: boolean?
  inputBinding:
    prefix: --follow
- id: in_dataset_id
  doc: Get details related to how dataset was created (``id``, ``job_id``,
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
- show_dataset_provenance
