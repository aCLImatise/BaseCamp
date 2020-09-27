class: CommandLineTool
id: sampling_utils_sample_stream.cwl
inputs:
- id: in_verbose
  doc: "-r, --prob FLOAT       Probability of picking a sequence\n-x, --max-seq INTEGER\
    \  Maximum number of sequences\n-q, --fastq            The input file is a fastq\
    \ file\n--help                 Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sampling-utils
- sample_stream
