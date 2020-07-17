class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcfglxgt.cwl
inputs:
- id: fix_null_genotypes
  doc: only apply to null and partly-null genotypes
  type: boolean
  inputBinding:
    prefix: --fix-null-genotypes
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfglxgt
