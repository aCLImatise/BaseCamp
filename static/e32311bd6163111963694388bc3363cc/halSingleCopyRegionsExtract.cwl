class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/halSingleCopyRegionsExtract.cwl
inputs:
- id: hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- halSingleCopyRegionsExtract
