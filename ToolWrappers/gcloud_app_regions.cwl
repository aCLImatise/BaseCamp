class: CommandLineTool
id: gcloud_app_regions.cwl
inputs:
- id: in_environments
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: List the availability of flex and standard environments for each
  type: string
  inputBinding:
    position: 0
- id: in_region_dot
  doc: EXAMPLES
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
- app
- regions
