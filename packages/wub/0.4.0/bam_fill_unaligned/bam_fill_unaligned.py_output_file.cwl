class: CommandLineTool
id: bam_fill_unaligned.py_output_file.cwl
inputs:
- id: in_q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_bam_fill_unaligned_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam_fill_unaligned.py
- output_file
