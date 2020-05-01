#!/usr/bin/env cwl-runner

baseCommand:
- fasta2reads.py
class: CommandLineTool
cwlVersion: v1.0
id: fasta2reads.py
inputs:
- doc: Step for the sliding window. Default is 1.
  id: step
  inputBinding:
    prefix: --step
  type: string
- doc: Size of the gap between the reads. Default is 50.
  id: gap
  inputBinding:
    prefix: --gap
  type: string
- doc: Length of the reads. Default is 100.
  id: length
  inputBinding:
    prefix: --length
  type: long
- doc: Percentage of SNPs to be generated. If set to 1 then it will generate a SNP
    every 100 nucleotides. If set to 0 then no SNPs are generated. Default is 0.
  id: snp
  inputBinding:
    prefix: --snp
  type: string
