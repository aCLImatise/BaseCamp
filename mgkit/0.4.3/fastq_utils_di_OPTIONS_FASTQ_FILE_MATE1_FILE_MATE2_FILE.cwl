class: CommandLineTool
id: fastq_utils_di_OPTIONS_FASTQ_FILE_MATE1_FILE_MATE2_FILE.cwl
inputs:
- id: strip
  doc: Strip additional info
  type: boolean
  inputBinding:
    prefix: --strip
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-utils
- di
- OPTIONS
- FASTQ_FILE
- MATE1_FILE
- MATE2_FILE
