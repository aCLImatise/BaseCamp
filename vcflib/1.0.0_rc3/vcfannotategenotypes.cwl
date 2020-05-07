class: CommandLineTool
id: vcfannotategenotypes.cwl
inputs:
- id: annotation_tag
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfannotategenotypes
