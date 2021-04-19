class: CommandLineTool
id: parsec_histories_show_history.cwl
inputs:
- id: in_contents
  doc: "When ``True``, instead of the history details, return a list\nwith info for\
    \ all datasets in the given history. Note that\ninside each dataset info dict,\
    \ the id which should be used\nfor further requests about this history dataset\
    \ is given by\nthe value of the `id` (not `dataset_id`) key."
  type: boolean?
  inputBinding:
    prefix: --contents
- id: in_deleted
  doc: "When ``contents=True``, whether to filter for the deleted\ndatasets (``True``)\
    \ or for the non-deleted ones (``False``).\nIf not set, no filtering is applied."
  type: string?
  inputBinding:
    prefix: --deleted
- id: in_visible
  doc: "When ``contents=True``, whether to filter for the visible\ndatasets (``True``)\
    \ or for the hidden ones (``False``). If\nnot set, no filtering is applied."
  type: string?
  inputBinding:
    prefix: --visible
- id: in_details
  doc: "When ``contents=True``, include dataset details. Set to\n'all' for the most\
    \ information."
  type: string?
  inputBinding:
    prefix: --details
- id: in_types
  doc: "When ``contents=True``, filter for history content types. If\nset to ``['dataset']``,\
    \ return only datasets. If set to\n``['dataset_collection']``, return only dataset\
    \ collections.\nIf not set, no filtering is applied."
  type: string?
  inputBinding:
    prefix: --types
- id: in_information_dot
  doc: "Output:\ndetails of the given history or list of dataset info"
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
- show_history
