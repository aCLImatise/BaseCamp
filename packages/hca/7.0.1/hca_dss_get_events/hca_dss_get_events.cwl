class: CommandLineTool
id: hca_dss_get_events.cwl
inputs:
- id: in_replica
  doc: '[--per-page PER_PAGE]'
  type: string
  inputBinding:
    prefix: --replica
- id: in_from_date
  doc: Timestamp to begin replaying events, in DSS_VERSION format.  If this is not
    provided, replay from the earliest event.
  type: string
  inputBinding:
    prefix: --from-date
- id: in_to_date
  doc: Timestamp to stop replaying events, in DSS_VERSION format.  If this is not
    provided, replay to the latest event.
  type: string
  inputBinding:
    prefix: --to-date
- id: in_per_page
  doc: Max number of results to return per page.
  type: long
  inputBinding:
    prefix: --per-page
- id: in_token
  doc: Token to manage retries.  End users constructing queries should not set this
    parameter.
  type: string
  inputBinding:
    prefix: --token
- id: in_no_paginate
  doc: Do not automatically page the responses
  type: boolean
  inputBinding:
    prefix: --no-paginate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- dss
- get-events
