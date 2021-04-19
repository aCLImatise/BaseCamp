class: CommandLineTool
id: parsec_histories_update_history.cwl
inputs:
- id: in_annotation
  doc: Replace history annotation with given string
  type: string?
  inputBinding:
    prefix: --annotation
- id: in_deleted
  doc: Mark or unmark history as deleted
  type: boolean?
  inputBinding:
    prefix: --deleted
- id: in_importable
  doc: Mark or unmark history as importable
  type: boolean?
  inputBinding:
    prefix: --importable
- id: in_name
  doc: Replace history name with the given string
  type: string?
  inputBinding:
    prefix: --name
- id: in_published
  doc: Mark or unmark history as published
  type: boolean?
  inputBinding:
    prefix: --published
- id: in_purged
  doc: "If ``True``, mark history as purged (permanently\ndeleted)."
  type: boolean?
  inputBinding:
    prefix: --purged
- id: in_tags
  doc: Replace history tags with the given list
  type: string?
  inputBinding:
    prefix: --tags
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
- update_history
