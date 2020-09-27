class: CommandLineTool
id: fastq_utils_convert.cwl
inputs:
- id: in_verbose
  doc: "--help         Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_file
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
- fastq-utils
- convert
