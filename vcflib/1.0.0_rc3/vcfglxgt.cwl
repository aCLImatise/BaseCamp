class: CommandLineTool
id: vcfglxgt.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fix_null_genotypes
  doc: only apply to null and partly-null genotypes
  type: boolean
  inputBinding:
    prefix: --fix-null-genotypes
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfglxgt
