class: CommandLineTool
id: sampling_utils_sample_stream_OPTIONS.cwl
inputs:
- id: prob
  doc: Probability of picking a sequence
  type: double
  inputBinding:
    prefix: --prob
- id: max_seq
  doc: Maximum number of sequences
  type: long
  inputBinding:
    prefix: --max-seq
- id: fast_q
  doc: The input file is a fastq file
  type: boolean
  inputBinding:
    prefix: --fastq
outputs: []
cwlVersion: v1.1
baseCommand:
- sampling-utils
- sample_stream
- OPTIONS
