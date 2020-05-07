class: CommandLineTool
id: fastq_utils_il_OPTIONS_MATE1_FILE_FASTQ_FILE.cwl
inputs:
- id: mate2_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-utils
- il
- OPTIONS
- MATE1_FILE
- FASTQ_FILE
