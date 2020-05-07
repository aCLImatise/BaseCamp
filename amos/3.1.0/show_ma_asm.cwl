class: CommandLineTool
id: show_ma_asm.cwl
inputs:
- id: uid
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: asm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: frg_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: g
  doc: Count gaps in printed consensus positions
  type: boolean
  inputBinding:
    prefix: -g
- id: s
  doc: Print SNPs in addition to multialignments
  type: boolean
  inputBinding:
    prefix: -s
- id: u
  doc: Print alignments for unitig(s) with specfied uid(s)
  type: boolean
  inputBinding:
    prefix: -u
- id: v
  doc: Display code version
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- show-ma-asm
