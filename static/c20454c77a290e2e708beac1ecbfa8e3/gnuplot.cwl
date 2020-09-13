class: CommandLineTool
id: ../../../gnuplot.cwl
inputs:
- id: in_persist
  doc: ''
  type: boolean
  inputBinding:
    prefix: --persist
- id: in_default_settings
  doc: ''
  type: boolean
  inputBinding:
    prefix: --default-settings
- id: in_c
  doc: -e  "command1; command2; ..."
  type: long[]
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gnuplot
