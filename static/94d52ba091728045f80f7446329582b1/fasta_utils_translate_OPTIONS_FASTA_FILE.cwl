class: CommandLineTool
id: fasta_utils_translate_OPTIONS_FASTA_FILE.cwl
inputs:
- id: trans_table
  doc: '[bac_plt|drs_mit|inv_mit|prt_mit|universal|vt_mit|yst_alt|yst_mit] translation
    table  [default: universal]'
  type: boolean
  inputBinding:
    prefix: --trans-table
- id: progress
  doc: Shows Progress Bar
  type: boolean
  inputBinding:
    prefix: --progress
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta-utils
- translate
- OPTIONS
- FASTA_FILE
