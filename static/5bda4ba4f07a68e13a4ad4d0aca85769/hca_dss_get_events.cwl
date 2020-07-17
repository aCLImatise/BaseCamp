class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_dss_get_events.cwl
inputs:
- id: from_date
  doc: Timestamp to begin replaying events, in DSS_VERSION format.  If this is not
    provided, replay from the earliest event.
  type: string
  inputBinding:
    prefix: --from-date
- id: to_date
  doc: Timestamp to stop replaying events, in DSS_VERSION format.  If this is not
    provided, replay to the latest event.
  type: string
  inputBinding:
    prefix: --to-date
- id: replica
  doc: Replica to fetch from.
  type: string
  inputBinding:
    prefix: --replica
- id: per_page
  doc: Max number of results to return per page.
  type: string
  inputBinding:
    prefix: --per-page
- id: token
  doc: Token to manage retries.  End users constructing queries should not set this
    parameter.
  type: string
  inputBinding:
    prefix: --token
- id: no_paginate
  doc: Do not automatically page the responses
  type: boolean
  inputBinding:
    prefix: --no-paginate
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- get-events
