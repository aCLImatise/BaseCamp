class: CommandLineTool
id: galah_cluster_validate_OPTIONS.cwl
inputs:
- id: cluster_file
  doc: ''
  type: string
  inputBinding:
    prefix: --cluster-file
outputs: []
cwlVersion: v1.1
baseCommand:
- galah
- cluster-validate
- OPTIONS
