class: CommandLineTool
id: fastq_utils_convert_OPTIONS_FASTQ_FILE.cwl
inputs:
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-utils
- convert
- OPTIONS
- FASTQ_FILE
