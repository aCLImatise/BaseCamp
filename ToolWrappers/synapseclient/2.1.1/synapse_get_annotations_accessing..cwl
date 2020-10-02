class: CommandLineTool
id: synapse_get_annotations_accessing..cwl
inputs:
- id: in_o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
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
- id: in_get_annotations
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- synapse
- get-annotations
- accessing.
