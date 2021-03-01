class: CommandLineTool
id: show_ma_asm.cwl
inputs:
- id: in_count_gaps_printed
  doc: Count gaps in printed consensus positions
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_print_snps_addition
  doc: Print SNPs in addition to multialignments
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_print_alignments_unitigs
  doc: Print alignments for unitig(s) with specfied uid(s)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_display_code_version
  doc: Display code version
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_uid
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_asm_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_frg_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- show-ma-asm
