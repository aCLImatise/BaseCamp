class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mb_cap_occupancy_outputfile.cwl
inputs:
- id: quantile
  doc: ''
  type: string
  inputBinding:
    prefix: --quantile
- id: mb_cap_occupancy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-cap-occupancy
- outputfile
