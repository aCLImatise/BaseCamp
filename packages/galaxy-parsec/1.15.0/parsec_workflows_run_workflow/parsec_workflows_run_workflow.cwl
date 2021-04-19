class: CommandLineTool
id: parsec_workflows_run_workflow.cwl
inputs:
- id: in_dataset_map
  doc: "A mapping of workflow inputs to datasets. The\ndatasets source can be a\n\
    LibraryDatasetDatasetAssociation (``ldda``),\nLibraryDataset (``ld``), or\nHistoryDatasetAssociation\
    \ (``hda``). The map\nmust be in the following format: ``{'<input>':\n{'id': <encoded\
    \ dataset ID>, 'src': '[ldda, ld,\nhda]'}}`` (e.g. ``{'23': {'id':\n'29beef4fadeed09f',\
    \ 'src': 'ld'}}``)"
  type: long?
  inputBinding:
    prefix: --dataset_map
- id: in_params
  doc: "A mapping of non-datasets tool parameters (see\nbelow)"
  type: string?
  inputBinding:
    prefix: --params
- id: in_history_id
  doc: "The encoded history ID where to store the\nworkflow output. Alternatively,\
    \ ``history_name``\nmay be specified to create a new history."
  type: string?
  inputBinding:
    prefix: --history_id
- id: in_history_name
  doc: "Create a new history with the given name to\nstore the workflow output. If\
    \ both\n``history_id`` and ``history_name`` are\nprovided, ``history_name`` is\
    \ ignored. If\nneither is specified, a new 'Unnamed history' is\ncreated."
  type: string?
  inputBinding:
    prefix: --history_name
- id: in_import_inputs_to_history
  doc: "If ``True``, used workflow inputs will be\nimported into the history. If ``False``,\
    \ only\nworkflow outputs will be visible in the given\nhistory."
  type: boolean?
  inputBinding:
    prefix: --import_inputs_to_history
- id: in_replacement_params
  doc: "pattern-based replacements for post-job actions\n(see below)"
  type: string?
  inputBinding:
    prefix: --replacement_params
- id: in_step_dot
  doc: The ``replacement_params`` dict should map parameter names in
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
- workflows
- run_workflow
