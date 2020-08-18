class: CommandLineTool
id: ../../../mb_remove_duplicates_output_fastq.cwl
inputs:
- id: verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: mb_remove_duplicates
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-remove-duplicates
- output_fastq
