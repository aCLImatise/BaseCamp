class: CommandLineTool
id: ../../../checkm_analysis.cwl
inputs:
- id: check_m
  doc: Specify the CHeckM output File (should be the one created using --tab_table
  type: string
  inputBinding:
    prefix: -checkM
- id: identify_what_suffix
  doc: 'Identify what your suffix for fasta file is [default: .fna]'
  type: string
  inputBinding:
    prefix: -f
- id: suffix
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm_analysis
