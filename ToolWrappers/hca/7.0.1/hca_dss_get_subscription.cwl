class: CommandLineTool
id: hca_dss_get_subscription.cwl
inputs:
- id: in_uuid
  doc: A RFC4122-compliant ID for the subscription.
  type: long
  inputBinding:
    prefix: --uuid
- id: in_replica
  doc: Replica to fetch from.
  type: string
  inputBinding:
    prefix: --replica
- id: in_subscription_type
  doc: "type of subscriptions to fetch (elasticsearch or jmespath)\n"
  type: string
  inputBinding:
    prefix: --subscription-type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- dss
- get-subscription
