class: CommandLineTool
id: ../../../hca_auth_post_v1_policies_evaluate.cwl
inputs:
- id: principal
  doc: Attested user identifier.
  type: string
  inputBinding:
    prefix: --principal
- id: action
  doc: The action the principal is attempting to perform.
  type: string[]
  inputBinding:
    prefix: --action
- id: resource
  doc: The resource the principal will perform the action against.
  type: string[]
  inputBinding:
    prefix: --resource
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- auth
- post-v1-policies-evaluate
