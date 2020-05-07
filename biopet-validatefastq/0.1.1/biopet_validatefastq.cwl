class: CommandLineTool
id: biopet_validatefastq.cwl
inputs:
- id: log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string
  inputBinding:
    prefix: --log_level
- id: fastq1
  doc: FASTQ file to be validated. (Required)
  type: File
  inputBinding:
    prefix: --fastq1
- id: fastq2
  doc: Second FASTQ to be validated if FASTQs are paired. (Optional)
  type: File
  inputBinding:
    prefix: --fastq2
outputs: []
cwlVersion: v1.1
baseCommand:
- biopet-validatefastq
