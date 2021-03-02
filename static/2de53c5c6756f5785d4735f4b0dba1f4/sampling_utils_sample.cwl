class: CommandLineTool
id: sampling_utils_sample.cwl
inputs:
- id: in_verbose
  doc: "Prefix for the file name(s) in output  [default:\nsample]"
  type: File?
  inputBinding:
    prefix: --verbose
- id: in_number
  doc: 'Number of samples to take  [default: 1]'
  type: long?
  inputBinding:
    prefix: --number
- id: in_prob
  doc: 'Probability of picking a sequence  [default: 0.001]'
  type: double?
  inputBinding:
    prefix: --prob
- id: in_max_seq
  doc: 'Maximum number of sequences  [default: 100000]'
  type: long?
  inputBinding:
    prefix: --max-seq
- id: in_fast_q
  doc: The input file is a fastq file
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_gzip
  doc: gzip output files
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_verbose
  doc: "Prefix for the file name(s) in output  [default:\nsample]"
  type: File?
  outputBinding:
    glob: $(inputs.in_verbose)
hints: []
cwlVersion: v1.1
baseCommand:
- sampling-utils
- sample
