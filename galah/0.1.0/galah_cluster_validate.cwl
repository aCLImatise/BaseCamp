class: CommandLineTool
id: galah_cluster_validate.cwl
inputs:
- id: ani
  doc: 'ANI to validate against [default: 99]'
  type: string
  inputBinding:
    prefix: --ani
- id: cluster_file
  doc: Output of 'cluster' subcommand
  type: string
  inputBinding:
    prefix: --cluster-file
- id: threads
  doc: '[default: 1]'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- galah
- cluster-validate
