class: CommandLineTool
id: ../../../m9B_btop_msa.pl.cwl
inputs:
- id: masked_lib_out
  doc: -- FASTA format library of MSA sequences
  type: boolean
  inputBinding:
    prefix: --masked_lib_out
- id: query_file
  doc: ''
  type: string
  inputBinding:
    prefix: --query_file
- id: bound_file
  doc: ''
  type: string
  inputBinding:
    prefix: --bound_file
- id: fast_a_m_nine_output_dotfile
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- m9B_btop_msa.pl
