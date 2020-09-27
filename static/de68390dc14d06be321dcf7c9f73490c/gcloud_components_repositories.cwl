class: CommandLineTool
id: gcloud_components_repositories.cwl
inputs:
- id: in_add
  doc: Add a new Trusted Tester component repository.
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: List any Trusted Tester component repositories you have registered.
  type: string
  inputBinding:
    position: 1
- id: in_remove
  doc: Remove a registered Trusted Test component repository.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- components
- repositories
