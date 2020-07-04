class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/omero_load.cwl
inputs:
- id: glob
  doc: Input paths are shell globs that should be expanded and sorted.
  type: boolean
  inputBinding:
    prefix: --glob
- id: keep_going
  doc: Continue processing after an error.
  type: boolean
  inputBinding:
    prefix: --keep-going
- id: or
  doc: "$ omero login       # login can't take place in HERE-document $ omero load\
    \ <<EOF user list group list EOF"
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- load
