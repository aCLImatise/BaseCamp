class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/biopet_validatefastq.cwl
inputs:
- id: log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string
  inputBinding:
    prefix: --log_level
- id: fast_q_one
  doc: FASTQ file to be validated. (Required)
  type: File
  inputBinding:
    prefix: --fastq1
- id: fast_q_two
  doc: Second FASTQ to be validated if FASTQs are paired. (Optional)
  type: File
  inputBinding:
    prefix: --fastq2
- id: validate_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- biopet-validatefastq
