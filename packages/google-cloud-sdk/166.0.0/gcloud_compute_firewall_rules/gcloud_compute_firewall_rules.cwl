class: CommandLineTool
id: gcloud_compute_firewall_rules.cwl
inputs:
- id: in_create
  doc: Create a Google Compute Engine firewall rule.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete Google Compute Engine firewall rules.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Describe a Google Compute Engine firewall rule.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List Google Compute Engine firewall rules.
  type: string
  inputBinding:
    position: 3
- id: in_update
  doc: Update a firewall rule.
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- firewall-rules
