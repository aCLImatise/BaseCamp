class: CommandLineTool
id: gcloud_service_management_configs.cwl
inputs:
- id: in_services
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_describe
  doc: Describes the configuration for a given version of a service.
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: Lists the configurations for a given service.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- service-management
- configs
