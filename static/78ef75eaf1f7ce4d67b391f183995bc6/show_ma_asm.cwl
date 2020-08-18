class: CommandLineTool
id: ../../../show_ma_asm.cwl
inputs:
- id: count_gaps_printed
  doc: Count gaps in printed consensus positions
  type: boolean
  inputBinding:
    prefix: -g
- id: print_snps_addition
  doc: Print SNPs in addition to multialignments
  type: boolean
  inputBinding:
    prefix: -s
- id: print_alignments_unitigs
  doc: Print alignments for unitig(s) with specfied uid(s)
  type: boolean
  inputBinding:
    prefix: -u
- id: display_code_version
  doc: Display code version
  type: boolean
  inputBinding:
    prefix: -V
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
outputs: []
cwlVersion: v1.1
baseCommand:
- show-ma-asm
