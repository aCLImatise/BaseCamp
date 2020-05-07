class: CommandLineTool
id: msms2cp.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: msms2cppl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: msms_output_txt
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_filename_prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- msms2cp.pl
