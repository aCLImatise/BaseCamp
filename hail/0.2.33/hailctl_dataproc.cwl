class: CommandLineTool
id: ../../../hailctl_dataproc.cwl
inputs:
- id: beta
  doc: Force use of `beta` in gcloud commands
  type: boolean
  inputBinding:
    prefix: --beta
outputs: []
cwlVersion: v1.1
baseCommand:
- hailctl
- dataproc
