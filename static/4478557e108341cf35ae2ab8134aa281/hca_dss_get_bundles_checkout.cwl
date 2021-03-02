class: CommandLineTool
id: hca_dss_get_bundles_checkout.cwl
inputs:
- id: in_replica
  doc: Replica to fetch from.
  type: string?
  inputBinding:
    prefix: --replica
- id: in_rfccompliant_id_checkout
  doc: "A RFC4122-compliant ID for the checkout job request.\n"
  type: long?
  inputBinding:
    prefix: --checkout-job-id
- id: in_use_route_returned
  doc: Use this route with the `checkout_job_id` identifier returned by `POST /bundles/{uuid}/checkout`.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- get-bundles-checkout
