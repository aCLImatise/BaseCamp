class: CommandLineTool
id: ../../../synapse_set_annotations_accessing..cwl
inputs:
- id: in_r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: in_annotations
  doc: ''
  type: string
  inputBinding:
    prefix: --annotations
- id: in_id
  doc: ''
  type: long
  inputBinding:
    prefix: --id
- id: in_synapse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_set_annotations
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- synapse
- set-annotations
- accessing.
