class: CommandLineTool
id: bp_aacomp.pl.cwl
inputs:
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_aa_comp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bp_aacomp.pl
