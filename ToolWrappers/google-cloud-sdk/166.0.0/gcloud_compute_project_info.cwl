class: CommandLineTool
id: gcloud_compute_project_info.cwl
inputs:
- id: in_add_metadata
  doc: Add or update project-wide metadata.
  type: string
  inputBinding:
    position: 0
- id: in_describe
  doc: Describe the Google Compute Engine project resource.
  type: string
  inputBinding:
    position: 1
- id: in_remove_metadata
  doc: Remove project-wide metadata entries.
  type: string
  inputBinding:
    position: 2
- id: in_set_usage_bucket
  doc: Set the usage reporting bucket for a project.
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
- compute
- project-info
