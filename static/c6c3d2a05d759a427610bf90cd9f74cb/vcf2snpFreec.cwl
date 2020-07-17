class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcf2snpFreec.pl.cwl
inputs:
- id: file_dbsnp_vcf
  doc: file                   dbSNP vcf file
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2snpFreec.pl
