class: CommandLineTool
id: parsec_histories_delete_history.cwl
inputs:
- id: in_purge
  doc: if ``True``, also purge (permanently delete) the history
  type: boolean?
  inputBinding:
    prefix: --purge
- id: in_the
  doc: history was marked as deleted), ``purged`` (if
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
- delete_history
