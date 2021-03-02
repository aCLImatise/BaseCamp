class: CommandLineTool
id: gcloud_compute_forwarding_rules.cwl
inputs:
- id: in_create
  doc: Create a forwarding rule to direct network traffic to a load balancer.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete forwarding rules.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Display detailed information about a forwarding rule.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List Google Compute Engine forwarding rules.
  type: string
  inputBinding:
    position: 3
- id: in_set_target
  doc: Modify a forwarding rule to direct network traffic to a new target.
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- forwarding-rules
