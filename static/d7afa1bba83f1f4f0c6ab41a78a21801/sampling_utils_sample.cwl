class: CommandLineTool
id: sampling_utils_sample.cwl
inputs:
- id: prefix
  doc: 'Prefix for the file name(s) in output  [default: sample]'
  type: string
  inputBinding:
    prefix: --prefix
- id: number
  doc: 'Number of samples to take  [default: 1]'
  type: long
  inputBinding:
    prefix: --number
- id: prob
  doc: 'Probability of picking a sequence  [default: 0.001]'
  type: double
  inputBinding:
    prefix: --prob
- id: max_seq
  doc: 'Maximum number of sequences  [default: 100000]'
  type: long
  inputBinding:
    prefix: --max-seq
- id: fast_q
  doc: The input file is a fastq file
  type: boolean
  inputBinding:
    prefix: --fastq
- id: gzip
  doc: gzip output files
  type: boolean
  inputBinding:
    prefix: --gzip
outputs: []
cwlVersion: v1.1
baseCommand:
- sampling-utils
- sample
