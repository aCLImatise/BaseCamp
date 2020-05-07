class: CommandLineTool
id: vcf2snpFreec.pl.cwl
inputs:
- id: f
  doc: file                   dbSNP vcf file
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2snpFreec.pl
