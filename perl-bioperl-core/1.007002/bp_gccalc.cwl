class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bp_gccalc.pl.cwl
inputs:
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
- id: gc_calc_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_gccalc.pl
