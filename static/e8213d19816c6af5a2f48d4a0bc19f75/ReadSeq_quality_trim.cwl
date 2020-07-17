class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ReadSeq_quality_trim.cwl
inputs:
- id: fast_q_out
  doc: Write fastq instead of fasta file, offset 33 (#)
  type: boolean
  inputBinding:
    prefix: --fastq-out
- id: illumina
  doc: Illumina trimming mode
  type: boolean
  inputBinding:
    prefix: --illumina
- id: less_than
  doc: Trim at <= instead of strictly =
  type: boolean
  inputBinding:
    prefix: --less-than
- id: min_seq_length
  doc: filter sequence by minimum sequence length, default is 1
  type: string
  inputBinding:
    prefix: --min_seq_length
- id: usage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ReadSeq
- quality-trim
