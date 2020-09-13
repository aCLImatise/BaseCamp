class: CommandLineTool
id: ../../../synapse_set_annotations.cwl
inputs:
- id: in_id
  doc: Synapse ID of entity whose annotations we are
  type: long
  inputBinding:
    prefix: --id
- id: in_replace
  doc: "Replace all existing annotations with the given\nannotations\n"
  type: boolean
  inputBinding:
    prefix: --replace
- id: in_annotations
  doc: ''
  type: string
  inputBinding:
    prefix: --annotations
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- synapse
- set-annotations
