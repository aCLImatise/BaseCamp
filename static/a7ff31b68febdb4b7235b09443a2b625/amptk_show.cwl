class: CommandLineTool
id: amptk_show.cwl
inputs:
- id: in_input
  doc: Input FASTQ file (.demux.fq)
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_quality_trim
  doc: Quality trim reads
  type: boolean?
  inputBinding:
    prefix: --quality_trim
- id: in_max_ee
  doc: 'maxEE threshold for quality. Default: 1.0'
  type: boolean?
  inputBinding:
    prefix: --maxee
- id: in_length
  doc: 'truncation length for trimming: Default: 250'
  type: boolean?
  inputBinding:
    prefix: --length
- id: in_out
  doc: Output FASTQ file name (--quality_trim only)
  type: File?
  inputBinding:
    prefix: --out
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output FASTQ file name (--quality_trim only)
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- amptk
- show
