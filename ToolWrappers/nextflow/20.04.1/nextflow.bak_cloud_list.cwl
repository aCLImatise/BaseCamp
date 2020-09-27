class: CommandLineTool
id: nextflow.bak_cloud_list.cwl
inputs:
- id: in_region
  doc: "The region to use. Overrides config/env settings.\n"
  type: boolean
  inputBinding:
    prefix: -region
- id: in_cluster_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nextflow.bak
- cloud
- list
