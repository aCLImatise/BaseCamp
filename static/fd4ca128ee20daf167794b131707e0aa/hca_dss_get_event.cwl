class: CommandLineTool
id: ../../../hca_dss_get_event.cwl
inputs:
- id: uuid
  doc: Bundle unique ID.
  type: string
  inputBinding:
    prefix: --uuid
- id: replica
  doc: Replica to fetch from.
  type: string
  inputBinding:
    prefix: --replica
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- get-event
