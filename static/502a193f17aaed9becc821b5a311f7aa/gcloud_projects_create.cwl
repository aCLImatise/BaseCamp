class: CommandLineTool
id: gcloud_projects_create.cwl
inputs:
- id: in_enable_cloud_apis
  doc: "Enable cloudapis.googleapis.com during creation. Enabled by default,\nuse\
    \ --no-enable-cloud-apis to disable."
  type: boolean?
  inputBinding:
    prefix: --enable-cloud-apis
- id: in_labels
  doc: "=[KEY=VALUE,...]\nA list of label KEY=VALUE pairs to add."
  type: boolean?
  inputBinding:
    prefix: --labels
- id: in_name
  doc: "Name for the project you want to create. If not specified, will use\nproject\
    \ id as name."
  type: string?
  inputBinding:
    prefix: --name
- id: in_organization
  doc: ID for the organization to use as a parent
  type: string?
  inputBinding:
    prefix: --organization
- id: in_set_as_default
  doc: Set newly created project as [core.project] property.
  type: boolean?
  inputBinding:
    prefix: --set-as-default
- id: in_characters_dot
  doc: FLAGS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- projects
- create
