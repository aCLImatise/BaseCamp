class: CommandLineTool
id: parsec_histories_export_history.cwl
inputs:
- id: in_gzip
  doc: "create .tar.gz archive if ``True``, else .tar  [default:\nTrue]"
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_include_hidden
  doc: whether to include hidden datasets in the export
  type: boolean?
  inputBinding:
    prefix: --include_hidden
- id: in_include_deleted
  doc: whether to include deleted datasets in the export
  type: boolean?
  inputBinding:
    prefix: --include_deleted
- id: in_wait
  doc: "if ``True``, block until the export is ready; else,\nreturn immediately"
  type: boolean?
  inputBinding:
    prefix: --wait
- id: in_max_wait
  doc: "Total time (in seconds) to wait for the export to become\nready. When set,\
    \ implies that ``wait`` is ``True``."
  type: double?
  inputBinding:
    prefix: --maxwait
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
- export_history
