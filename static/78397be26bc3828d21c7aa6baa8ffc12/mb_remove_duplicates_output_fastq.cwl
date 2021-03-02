class: CommandLineTool
id: mb_remove_duplicates_output_fastq.cwl
inputs:
- id: in_verbose
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_mb_remove_duplicates
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mb-remove-duplicates
- output_fastq
