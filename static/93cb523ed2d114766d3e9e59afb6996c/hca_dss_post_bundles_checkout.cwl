class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_dss_post_bundles_checkout.cwl
inputs:
- id: destination
  doc: User-owned destination storage bucket.
  type: string
  inputBinding:
    prefix: --destination
- id: email
  doc: An email address to send status updates to.
  type: string
  inputBinding:
    prefix: --email
- id: uuid
  doc: A RFC4122-compliant ID for the bundle.
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
- post-bundles-checkout
