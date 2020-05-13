class: CommandLineTool
id: vcfinfo2qual.cwl
inputs:
- id: key
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfinfo2qual
