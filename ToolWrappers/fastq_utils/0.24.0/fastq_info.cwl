class: CommandLineTool
id: fastq_info.cwl
inputs:
- id: in_reads_two_fastq
  doc: ': the reads in the two fastq files have the same ordering'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_fail_empty_files
  doc: ': do not fail with empty files'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_fail_encoding_determined
  doc: ': do not fail if quality encoding cannot be determined'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_skip_check_duplicated
  doc: ': skip check for duplicated readnames'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_fast_q_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_fast_q_two
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_file_vertical_line_pe
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastq_info
