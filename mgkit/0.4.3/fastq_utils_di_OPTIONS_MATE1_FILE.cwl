class: CommandLineTool
id: fastq_utils_di_OPTIONS_MATE1_FILE.cwl
inputs:
- id: fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: mate1_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mate2_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-utils
- di
- OPTIONS
- MATE1_FILE
