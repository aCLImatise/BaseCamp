class: CommandLineTool
id: ../../../mb_remove_duplicates_input_fastq.cwl
inputs:
- id: verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: output_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-remove-duplicates
- input_fastq
