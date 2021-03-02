class: CommandLineTool
id: hca_dss_get_subscriptions.cwl
inputs:
- id: in_replica
  doc: Replica to fetch from.
  type: string?
  inputBinding:
    prefix: --replica
- id: in_subscription_type
  doc: "Type of subscriptions to fetch (elasticsearch or jmespath).\n"
  type: string?
  inputBinding:
    prefix: --subscription-type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- get-subscriptions
