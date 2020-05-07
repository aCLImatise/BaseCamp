class: CommandLineTool
id: svtools_vcfpaste.cwl
inputs:
- id: vcf
  doc: VCF file(s) to join
  type: string
  inputBinding:
    position: 0
- id: master
  doc: VCF file to set first 8 columns of variant info [first file in vcf_list]
  type: string
  inputBinding:
    prefix: --master
outputs: []
cwlVersion: v1.1
baseCommand:
- svtools
- vcfpaste
