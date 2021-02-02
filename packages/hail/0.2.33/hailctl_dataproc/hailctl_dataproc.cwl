class: CommandLineTool
id: ../../../hailctl_dataproc.cwl
inputs:
- id: in_beta
  doc: Force use of `beta` in gcloud commands
  type: boolean
  inputBinding:
    prefix: --beta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hailctl
- dataproc
