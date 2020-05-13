class: CommandLineTool
id: fastq_utils_il_MATE2_FILE.cwl
inputs:
- id: options
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
- id: fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-utils
- il
- MATE2_FILE
