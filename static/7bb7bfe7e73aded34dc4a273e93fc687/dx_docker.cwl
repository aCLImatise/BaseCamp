class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dx_docker.cwl
inputs:
- id: quiet
  doc: Suppress printing pull progress to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-docker
