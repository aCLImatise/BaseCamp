class: CommandLineTool
id: duphold.cwl
inputs:
- id: vcf
  doc: path to sorted SV VCF/BCF
  type: File
  inputBinding:
    prefix: --vcf
- id: bam
  doc: path to indexed BAM/CRAM
  type: File
  inputBinding:
    prefix: --bam
- id: fast_a
  doc: indexed fasta reference.
  type: File
  inputBinding:
    prefix: --fasta
- id: snp
  doc: optional path to snp/indel VCF/BCF with which to annotate SVs. BCF is highly
    recommended as it's much faster to parse.
  type: File
  inputBinding:
    prefix: --snp
- id: threads
  doc: 'number of decompression threads. [default: 4]'
  type: long
  inputBinding:
    prefix: --threads
- id: output
  doc: 'output VCF/BCF (default is VCF to stdout) [default: -]'
  type: string
  inputBinding:
    prefix: --output
- id: drop
  doc: drop all samples from a multi-sample --vcf *except* the sample in --bam. useful
    for parallelization by sample followed by merge.
  type: boolean
  inputBinding:
    prefix: --drop
outputs: []
cwlVersion: v1.1
baseCommand:
- duphold
