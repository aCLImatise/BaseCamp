class: CommandLineTool
id: bp_gccalc.pl.cwl
inputs:
- id: in_i
  doc: ''
  type: File?
  inputBinding:
    prefix: -i
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -f
- id: in_gc_calc_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bp_gccalc.pl
