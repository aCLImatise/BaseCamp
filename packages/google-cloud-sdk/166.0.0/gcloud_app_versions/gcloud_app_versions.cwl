class: CommandLineTool
id: gcloud_app_versions.cwl
inputs:
- id: in_browse
  doc: Open the specified versions in a browser.
  type: string
  inputBinding:
    position: 0
- id: in_delete
  doc: Delete a specified version.
  type: string
  inputBinding:
    position: 1
- id: in_describe
  doc: Display all data about an existing version.
  type: string
  inputBinding:
    position: 2
- id: in_list
  doc: List your existing versions.
  type: string
  inputBinding:
    position: 3
- id: in_migrate
  doc: Migrate traffic from one version to another for a set of services.
  type: string
  inputBinding:
    position: 4
- id: in_start
  doc: Start serving specified versions.
  type: string
  inputBinding:
    position: 5
- id: in_stop
  doc: Stop serving specified versions.
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- app
- versions
