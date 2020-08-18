class: CommandLineTool
id: ../../../snpgenie.pl.cwl
inputs:
- id: workdir
  doc: =/home/kimura/HPV/SNPs/ --outdir=/home/kimura/HPV/SNPs/diversity/ > SNPGenie_HPV.out
  type: boolean
  inputBinding:
    prefix: --workdir
- id: vcf_format
  doc: =/home/ohta/human/data/ --outdir=SNPGenie_Results
  type: string
  inputBinding:
    prefix: --vcfformat
outputs: []
cwlVersion: v1.1
baseCommand:
- snpgenie.pl
