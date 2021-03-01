class: CommandLineTool
id: synapse_get_provenance_accessing..cwl
inputs:
- id: in_id
  doc: ''
  type: long?
  inputBinding:
    prefix: -id
- id: in_synapse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_get_provenance
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- synapse
- get-provenance
- accessing.
