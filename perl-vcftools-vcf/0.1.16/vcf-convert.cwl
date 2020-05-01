#!/usr/bin/env cwl-runner

baseCommand:
- vcf-convert
class: CommandLineTool
cwlVersion: v1.0
id: vcf-convert
inputs:
- doc: The reference sequence in samtools faindexed fasta file. (Not required with
    SNPs only.)
  id: refseq
  inputBinding:
    prefix: --refseq
  type: File
