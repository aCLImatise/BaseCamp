class: CommandLineTool
id: splitHaplotype.cwl
inputs:
- id: s
  doc: path to input seqStore of reads to classify.
  type: string
  inputBinding:
    prefix: -S
- id: r
  doc: '[-end]                     range of reads to operate on.'
  type: string
  inputBinding:
    prefix: -r
- id: r
  doc: path to input FASTA or FASTQ of reads to classify. these may be uncompressed,
    gzip, bzip2 or xz compressed.
  type: string
  inputBinding:
    prefix: -R
- id: cr
  doc: minimum ratio between best and second best to classify
  type: string
  inputBinding:
    prefix: -cr
- id: cl
  doc: minimum length of output read
  type: long
  inputBinding:
    prefix: -cl
- id: v
  doc: report how many batches per second are being processed
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- splitHaplotype
