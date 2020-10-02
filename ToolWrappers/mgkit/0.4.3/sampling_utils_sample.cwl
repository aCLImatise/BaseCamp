class: CommandLineTool
id: sampling_utils_sample.cwl
inputs:
- id: in_verbose
  doc: "-p, --prefix TEXT      Prefix for the file name(s) in output  [default:\n\
    sample]\n-n, --number INTEGER   Number of samples to take  [default: 1]\n-r, --prob\
    \ FLOAT       Probability of picking a sequence  [default: 0.001]\n-x, --max-seq\
    \ INTEGER  Maximum number of sequences  [default: 100000]\n-q, --fastq       \
    \     The input file is a fastq file\n-z, --gzip             gzip output files\n\
    --help                 Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_file
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
- sampling-utils
- sample
