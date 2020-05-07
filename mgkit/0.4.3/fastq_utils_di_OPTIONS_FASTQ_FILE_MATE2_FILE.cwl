class: CommandLineTool
id: fastq_utils_di_OPTIONS_FASTQ_FILE_MATE2_FILE.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-utils
- di
- OPTIONS
- FASTQ_FILE
- MATE2_FILE
