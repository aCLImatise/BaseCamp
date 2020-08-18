class: CommandLineTool
id: ../../../artic_vcf_filter.cwl
inputs:
- id: nano_polish
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nanopolish
- id: medaka
  doc: ''
  type: boolean
  inputBinding:
    prefix: --medaka
- id: longshot
  doc: ''
  type: boolean
  inputBinding:
    prefix: --longshot
outputs: []
cwlVersion: v1.1
baseCommand:
- artic_vcf_filter
