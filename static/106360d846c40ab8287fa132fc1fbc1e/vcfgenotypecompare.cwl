class: CommandLineTool
id: ../../../vcfgenotypecompare.cwl
inputs:
- id: other_genotype_tag
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
- vcfgenotypecompare
