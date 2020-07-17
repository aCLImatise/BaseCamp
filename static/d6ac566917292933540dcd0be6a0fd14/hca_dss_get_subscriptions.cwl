class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_dss_get_subscriptions.cwl
inputs:
- id: replica
  doc: Replica to fetch from.
  type: string
  inputBinding:
    prefix: --replica
- id: subscription_type
  doc: Type of subscriptions to fetch (elasticsearch or jmespath).
  type: string
  inputBinding:
    prefix: --subscription-type
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- get-subscriptions
