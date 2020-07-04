class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam_fill_unaligned.py_output_file.cwl
inputs:
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: bam_fill_unaligned_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_fill_unaligned.py
- output_file
