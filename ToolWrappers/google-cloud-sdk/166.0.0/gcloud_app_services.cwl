class: CommandLineTool
id: gcloud_app_services.cwl
inputs:
- id: in_browse
  doc: Open the specified service(s) in a browser.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete services in the current project.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Display all data about an existing service.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List your existing services.
  type: string
  inputBinding:
    position: 3
- id: in_set_traffic
  doc: Set traffic splitting settings.
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
- app
- services
