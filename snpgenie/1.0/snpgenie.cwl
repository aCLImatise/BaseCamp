#!/usr/bin/env cwl-runner

baseCommand:
- snpgenie.pl
class: CommandLineTool
cwlVersion: v1.0
id: snpgenie.pl
inputs:
- doc: =4
  id: vcf_format
  inputBinding:
    prefix: --vcfformat
  type: boolean
- doc: =/home/kimura/HPV/SNPs/ --outdir=/home/kimura/HPV/SNPs/diversity/ > SNPGenie_HPV.out
  id: workdir
  inputBinding:
    prefix: --workdir
  type: boolean
- doc: =4 --minfreq=0.001 --workdir=/home/ohta/human/data/ --outdir=SNPGenie_Results
  id: vcf_format
  inputBinding:
    prefix: --vcfformat
  type: boolean
