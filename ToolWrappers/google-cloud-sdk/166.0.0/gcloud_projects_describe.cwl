class: CommandLineTool
id: gcloud_projects_describe.cwl
inputs:
- id: in_project_id
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_optional
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- projects
- describe
