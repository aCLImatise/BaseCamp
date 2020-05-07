class: CommandLineTool
id: fastq_utils_il_OPTIONS_MATE1_FILE_MATE2_FILE.cwl
inputs:
- id: fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-utils
- il
- OPTIONS
- MATE1_FILE
- MATE2_FILE
