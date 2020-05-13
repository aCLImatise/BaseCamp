class: CommandLineTool
id: vcfgenotypecompare_other_genotype_tag.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfgenotypecompare
- other-genotype-tag
