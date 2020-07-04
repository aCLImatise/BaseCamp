class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcfkeepsamples.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sample_one
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sample_two
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfkeepsamples
