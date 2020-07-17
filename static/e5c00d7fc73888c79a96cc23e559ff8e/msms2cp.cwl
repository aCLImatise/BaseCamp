class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/msms2cp.pl.cwl
inputs:
- id: msms_output_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_filename_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- msms2cp.pl
