class: CommandLineTool
id: gcloud_config_configurations.cwl
inputs:
- id: in_configurations
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_activate
  doc: Activates an existing named configuration.
  type: string
  inputBinding:
    position: 0
- id: in_create
  doc: Creates a new named configuration.
  type: string
  inputBinding:
    position: 1
- id: in_delete
  doc: Deletes a named configuration.
  type: string
  inputBinding:
    position: 2
- id: in_describe
  doc: Describes a named configuration by listing its properties.
  type: string
  inputBinding:
    position: 3
- id: in_list
  doc: Lists existing named configurations.
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
- config
- configurations
