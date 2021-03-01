class: CommandLineTool
id: sampling_utils_sample_stream.cwl
inputs:
- id: in_verbose
  doc: Probability of picking a sequence
  type: double?
  inputBinding:
    prefix: --verbose
- id: in_max_seq
  doc: Maximum number of sequences
  type: long?
  inputBinding:
    prefix: --max-seq
- id: in_fast_q
  doc: The input file is a fastq file
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sampling-utils
- sample_stream
