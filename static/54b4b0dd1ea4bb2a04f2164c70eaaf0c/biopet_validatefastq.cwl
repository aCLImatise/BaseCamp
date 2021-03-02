class: CommandLineTool
id: biopet_validatefastq.cwl
inputs:
- id: in_log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string?
  inputBinding:
    prefix: --log_level
- id: in_fast_q_one
  doc: FASTQ file to be validated. (Required)
  type: File?
  inputBinding:
    prefix: --fastq1
- id: in_fast_q_two
  doc: Second FASTQ to be validated if FASTQs are paired. (Optional)
  type: File?
  inputBinding:
    prefix: --fastq2
- id: in_validate_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- biopet-validatefastq
