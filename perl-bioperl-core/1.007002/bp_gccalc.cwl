class: CommandLineTool
id: bp_gccalc.pl.cwl
inputs:
- id: gcc_a_lcpl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_gccalc.pl
