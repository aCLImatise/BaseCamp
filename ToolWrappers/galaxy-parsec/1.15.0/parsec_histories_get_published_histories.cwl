class: CommandLineTool
id: parsec_histories_get_published_histories.cwl
inputs:
- id: in_name
  doc: Name of history to filter on
  type: string?
  inputBinding:
    prefix: --name
- id: in_deleted
  doc: "whether to filter for the deleted histories (``True``) or for\nthe non-deleted\
    \ ones (``False``)"
  type: boolean?
  inputBinding:
    prefix: --deleted
- id: in_slug
  doc: History slug to filter on
  type: string?
  inputBinding:
    prefix: --slug
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
- get_published_histories
