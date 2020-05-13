class: CommandLineTool
id: fasta_utils_uid_OPTIONS_FASTA_FILE_OUTPUT_FILE.cwl
inputs:
- id: table
  doc: Filename of a table to record the changes (by default discards it)
  type: File
  inputBinding:
    prefix: --table
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta-utils
- uid
- OPTIONS
- FASTA_FILE
- OUTPUT_FILE
