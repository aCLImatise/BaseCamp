class: CommandLineTool
id: parsec_histories_get_histories.cwl
inputs:
- id: in_history_id
  doc: Encoded history ID to filter on
  type: string?
  inputBinding:
    prefix: --history_id
- id: in_name
  doc: Name of history to filter on
  type: string?
  inputBinding:
    prefix: --name
- id: in_deleted
  doc: "whether to filter for the deleted histories (``True``) or\nfor the non-deleted\
    \ ones (``False``)"
  type: boolean?
  inputBinding:
    prefix: --deleted
- id: in_published
  doc: "whether to filter for the published histories (``True``)\nor for the non-published\
    \ ones (``False``). If not set, no\nfiltering is applied. Note the filtering is\
    \ only applied\nto the user's own histories; to access all histories\npublished\
    \ by any user, use the\n``get_published_histories`` method."
  type: string?
  inputBinding:
    prefix: --published
- id: in_slug
  doc: History slug to filter on
  type: string?
  inputBinding:
    prefix: --slug
- id: in_arguments_dot
  doc: "Output:\nList of history dicts."
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
- get_histories
