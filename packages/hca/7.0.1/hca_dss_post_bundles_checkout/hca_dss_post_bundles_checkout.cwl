class: CommandLineTool
id: hca_dss_post_bundles_checkout.cwl
inputs:
- id: in_destination
  doc: User-owned destination storage bucket.
  type: string
  inputBinding:
    prefix: --destination
- id: in_email
  doc: An email address to send status updates to.
  type: string
  inputBinding:
    prefix: --email
- id: in_uuid
  doc: A RFC4122-compliant ID for the bundle.
  type: long
  inputBinding:
    prefix: --uuid
- id: in_replica
  doc: Replica to fetch from.
  type: string
  inputBinding:
    prefix: --replica
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- dss
- post-bundles-checkout
