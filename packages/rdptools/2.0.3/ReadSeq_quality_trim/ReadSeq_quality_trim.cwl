class: CommandLineTool
id: ReadSeq_quality_trim.cwl
inputs:
- id: in_fast_q_out
  doc: "Write fastq instead of fasta file, offset 33\n(#)"
  type: boolean
  inputBinding:
    prefix: --fastq-out
- id: in_illumina
  doc: Illumina trimming mode
  type: boolean
  inputBinding:
    prefix: --illumina
- id: in_less_than
  doc: Trim at <= instead of strictly =
  type: boolean
  inputBinding:
    prefix: --less-than
- id: in_min_seq_length
  doc: "filter sequence by minimum sequence length,\ndefault is 1\n"
  type: long
  inputBinding:
    prefix: --min_seq_length
- id: in_usage
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ReadSeq
- quality-trim
