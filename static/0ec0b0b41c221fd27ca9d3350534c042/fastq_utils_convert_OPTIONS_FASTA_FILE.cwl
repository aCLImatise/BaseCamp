class: CommandLineTool
id: fastq_utils_convert_OPTIONS_FASTA_FILE.cwl
inputs:
- id: fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-utils
- convert
- OPTIONS
- FASTA_FILE
