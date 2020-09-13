class: CommandLineTool
id: ../../../pick_long_reads.cwl
inputs:
- id: in_input_files
  doc: ''
  type: string
  inputBinding:
    prefix: --input_files
- id: in_length
  doc: ''
  type: long
  inputBinding:
    prefix: --length
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: in_cut_stars
  doc: ''
  type: boolean
  inputBinding:
    prefix: --cut_stars
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pick_long_reads
