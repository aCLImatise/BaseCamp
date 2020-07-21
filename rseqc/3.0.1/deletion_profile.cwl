class: CommandLineTool
id: ../../../deletion_profile.py.cwl
inputs:
- id: input
  doc: Input BAM file. [required]
  type: string
  inputBinding:
    prefix: --input
- id: read_align_length
  doc: Alignment length of read. It is usually set to the orignial read length. For
    example, all these cigar strings ("101M", "68M140N33M", "53M1D48M") suggest the
    read alignment length is 101. [required]
  type: string
  inputBinding:
    prefix: --read-align-length
- id: out_prefix
  doc: Prefix of output files(s). [required]
  type: string
  inputBinding:
    prefix: --out-prefix
- id: read_num
  doc: Number of aligned reads with deletions used to calculate the deletion profile.
    default=1000000
  type: string
  inputBinding:
    prefix: --read-num
- id: mapq
  doc: Minimum mapping quality. default=30
  type: string
  inputBinding:
    prefix: --mapq
outputs: []
cwlVersion: v1.1
baseCommand:
- deletion_profile.py
