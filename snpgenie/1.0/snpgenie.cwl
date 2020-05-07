class: CommandLineTool
id: snpgenie.pl.cwl
inputs:
- id: vcf_format
  doc: =4
  type: boolean
  inputBinding:
    prefix: --vcfformat
- id: workdir
  doc: =/home/kimura/HPV/SNPs/ --outdir=/home/kimura/HPV/SNPs/diversity/ > SNPGenie_HPV.out
  type: boolean
  inputBinding:
    prefix: --workdir
- id: vcf_format
  doc: =4 --minfreq=0.001 --workdir=/home/ohta/human/data/ --outdir=SNPGenie_Results
  type: boolean
  inputBinding:
    prefix: --vcfformat
outputs: []
cwlVersion: v1.1
baseCommand:
- snpgenie.pl
