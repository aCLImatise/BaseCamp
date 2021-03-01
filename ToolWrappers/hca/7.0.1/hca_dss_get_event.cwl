class: CommandLineTool
id: hca_dss_get_event.cwl
inputs:
- id: in_uuid
  doc: Bundle unique ID.
  type: string?
  inputBinding:
    prefix: --uuid
- id: in_replica
  doc: Replica to fetch from.
  type: string?
  inputBinding:
    prefix: --replica
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- get-event
