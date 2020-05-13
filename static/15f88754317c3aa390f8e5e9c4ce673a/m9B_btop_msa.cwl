class: CommandLineTool
id: m9B_btop_msa.pl.cwl
inputs:
- id: fast_a_m9_output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: masked_lib_out
  doc: library of MSA sequences
  type: string
  inputBinding:
    prefix: --masked_lib_out
outputs: []
cwlVersion: v1.1
baseCommand:
- m9B_btop_msa.pl
