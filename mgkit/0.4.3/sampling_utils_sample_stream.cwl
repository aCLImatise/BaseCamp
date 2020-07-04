class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sampling_utils_sample_stream.cwl
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
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sampling-utils
- sample_stream
