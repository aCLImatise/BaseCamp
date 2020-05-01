#!/usr/bin/env cwl-runner

baseCommand:
- duphold
class: CommandLineTool
cwlVersion: v1.0
id: duphold
inputs:
- doc: path to sorted SV VCF/BCF
  id: vcf
  inputBinding:
    prefix: --vcf
  type: File
- doc: path to indexed BAM/CRAM
  id: bam
  inputBinding:
    prefix: --bam
  type: File
- doc: indexed fasta reference.
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: File
- doc: optional path to snp/indel VCF/BCF with which to annotate SVs. BCF is highly
    recommended as it's much faster to parse.
  id: snp
  inputBinding:
    prefix: --snp
  type: File
- doc: 'number of decompression threads. [default: 4]'
  id: threads
  inputBinding:
    prefix: --threads
  type: long
- doc: 'output VCF/BCF (default is VCF to stdout) [default: -]'
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: drop all samples from a multi-sample --vcf *except* the sample in --bam. useful
    for parallelization by sample followed by merge.
  id: drop
  inputBinding:
    prefix: --drop
  type: boolean
