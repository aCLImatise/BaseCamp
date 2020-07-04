class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_dss_get_bundles_checkout.cwl
inputs:
- id: replica
  doc: Replica to fetch from.
  type: string
  inputBinding:
    prefix: --replica
- id: checkout_job_id
  doc: A RFC4122-compliant ID for the checkout job request.
  type: string
  inputBinding:
    prefix: --checkout-job-id
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- get-bundles-checkout
