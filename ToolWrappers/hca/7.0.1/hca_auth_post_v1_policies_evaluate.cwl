class: CommandLineTool
id: hca_auth_post_v1_policies_evaluate.cwl
inputs:
- id: in_principal
  doc: Attested user identifier.
  type: string?
  inputBinding:
    prefix: --principal
- id: in_action
  doc: The action the principal is attempting to perform.
  type: string[]
  inputBinding:
    prefix: --action
- id: in_resource
  doc: "The resource the principal will perform the action against.\n"
  type: string[]
  inputBinding:
    prefix: --resource
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- post-v1-policies-evaluate
