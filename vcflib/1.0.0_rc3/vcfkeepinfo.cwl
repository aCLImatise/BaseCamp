class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcfkeepinfo.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: field_one
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: field_two
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfkeepinfo
