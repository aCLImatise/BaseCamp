class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastq_info.cwl
inputs:
- id: reads_two_fastq
  doc: ': the reads in the two fastq files have the same ordering'
  type: boolean
  inputBinding:
    prefix: -s
- id: fail_empty_files
  doc: ': do not fail with empty files'
  type: boolean
  inputBinding:
    prefix: -e
- id: fail_encoding_determined
  doc: ': do not fail if quality encoding cannot be determined'
  type: boolean
  inputBinding:
    prefix: -q
- id: skip_check_duplicated
  doc: ': skip check for duplicated readnames'
  type: boolean
  inputBinding:
    prefix: -r
- id: fast_q_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_q_two
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file_vertical_line_pe
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_info
