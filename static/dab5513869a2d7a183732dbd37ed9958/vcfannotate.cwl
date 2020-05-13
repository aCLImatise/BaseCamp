class: CommandLineTool
id: vcfannotate.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed
  doc: use annotations provided by this BED file
  type: boolean
  inputBinding:
    prefix: --bed
- id: key
  doc: use this INFO field key for the annotations
  type: boolean
  inputBinding:
    prefix: --key
- id: default
  doc: use this INFO field key for records without annotations
  type: boolean
  inputBinding:
    prefix: --default
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfannotate
