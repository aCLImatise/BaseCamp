class: CommandLineTool
id: ../../../fastq_utils_di.cwl
inputs:
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_strip
  doc: Strip additional info
  type: boolean
  inputBinding:
    prefix: --strip
- id: in_fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mate_one_file
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_mate_two_file
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastq-utils
- di
