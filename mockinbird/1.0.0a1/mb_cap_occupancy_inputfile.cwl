class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_cap_occupancy_inputfile.cwl
inputs:
- id: quantile
  doc: ''
  type: string
  inputBinding:
    prefix: --quantile
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-cap-occupancy
- inputfile
