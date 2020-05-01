#!/usr/bin/env cwl-runner

baseCommand:
- svjedi.py
class: CommandLineTool
cwlVersion: v1.0
id: svjedi.py
inputs:
- doc: vcf format
  id: vcf
  inputBinding:
    prefix: --vcf
  type: string
- doc: fasta format
  id: ref
  inputBinding:
    prefix: --ref
  type: string
- doc: fasta format
  id: allele
  inputBinding:
    prefix: --allele
  type: string
- doc: '[<readfile> [<readfile> ...]], --input [<readfile> [<readfile> ...]] reads'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: PAF format
  id: paf
  inputBinding:
    prefix: --paf
  type: string
- doc: Number of threads
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: genotype output file
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: breakpoint distance overlap
  id: dover
  inputBinding:
    prefix: -dover
  type: string
- doc: soft clipping length allowed for semi global alingments
  id: d_end
  inputBinding:
    prefix: -dend
  type: string
- doc: 'Minimum number of alignments to genotype a SV (default: 3>=)'
  id: min_support
  inputBinding:
    prefix: --minsupport
  type: long
- doc: '[<seq data type>], --data [<seq data type>]'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
