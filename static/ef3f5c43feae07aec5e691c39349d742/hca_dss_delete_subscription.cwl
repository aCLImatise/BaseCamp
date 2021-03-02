class: CommandLineTool
id: hca_dss_delete_subscription.cwl
inputs:
- id: in_uuid
  doc: A RFC4122-compliant ID for the subscription.
  type: long?
  inputBinding:
    prefix: --uuid
- id: in_replica
  doc: Replica to delete from.
  type: string?
  inputBinding:
    prefix: --replica
- id: in_subscription_type
  doc: "type of subscriptions to fetch (elasticsearch or jmespath)\n"
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
- delete-subscription
