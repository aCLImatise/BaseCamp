class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kmc_dump.cwl
inputs:
- id: kmc_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- kmc_dump
