class: CommandLineTool
id: gcloud_dns_managed_zones.cwl
inputs:
- id: in_create
  doc: Create a Cloud DNS managed-zone.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete an empty Cloud DNS managed-zone.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: View the details of a Cloud DNS managed-zone.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: View the list of all your managed-zones.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- dns
- managed-zones
