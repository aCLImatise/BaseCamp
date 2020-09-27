class: CommandLineTool
id: gcloud_compute_xpn.cwl
inputs:
- id: in_associated_projects
  doc: Configure associated projects for cross-project networking (XPN).
  type: string
  inputBinding:
    position: 0
- id: in_organizations
  doc: Configure organizations for cross-project networking (XPN).
  type: string
  inputBinding:
    position: 1
- id: in_disable
  doc: Disable the given project as an XPN host.
  type: string
  inputBinding:
    position: 0
- id: in_enable
  doc: Enable the given project as an XPN host.
  type: string
  inputBinding:
    position: 1
- id: in_get_host_project
  doc: Get the XPN host project that the given project is linked to.
  type: string
  inputBinding:
    position: 2
- id: in_list_associated_resources
  doc: List the resources that can use the given project via XPN.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- compute
- xpn
