class: CommandLineTool
id: fasta_utils_translate.cwl
inputs:
- id: in_trans_table
  doc: "[bac_plt|drs_mit|inv_mit|prt_mit|universal|vt_mit|yst_alt|yst_mit]\ntranslation\
    \ table  [default: universal]"
  type: boolean?
  inputBinding:
    prefix: --trans-table
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_fast_a_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fasta-utils
- translate
