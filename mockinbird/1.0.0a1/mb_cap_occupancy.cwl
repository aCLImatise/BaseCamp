class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_cap_occupancy.cwl
inputs:
- id: quantile
  doc: quantile [0, 1.0]
  type: string
  inputBinding:
    prefix: --quantile
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-cap-occupancy
