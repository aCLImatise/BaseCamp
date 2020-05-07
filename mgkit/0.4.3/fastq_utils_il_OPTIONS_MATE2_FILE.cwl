class: CommandLineTool
id: fastq_utils_il_OPTIONS_MATE2_FILE.cwl
inputs:
- id: mate1_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mate2_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-utils
- il
- OPTIONS
- MATE2_FILE
