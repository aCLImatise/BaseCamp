class: CommandLineTool
id: parsec_histories_show_matching_datasets.cwl
inputs:
- id: in_name_filter
  doc: "Only datasets whose name matches the ``name_filter``\nregular expression will\
    \ be returned; use plain strings\nfor exact matches and None to match all datasets\
    \ in the\nhistory"
  type: string?
  inputBinding:
    prefix: --name_filter
- id: in_history_id
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
- histories
- show_matching_datasets
