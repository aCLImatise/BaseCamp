class: CommandLineTool
id: ../../../process_cluster_output.sh.cwl
inputs:
- id: usage_message
  doc: usage message
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- process_cluster_output.sh
