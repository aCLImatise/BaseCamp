class: CommandLineTool
id: checkm_analysis.cwl
inputs:
- id: in_check_m
  doc: Specify the CHeckM output File (should be the one created using --tab_table
  type: File
  inputBinding:
    prefix: -checkM
- id: in_identify_what_suffix
  doc: 'Identify what your suffix for fasta file is [default: .fna]'
  type: File
  inputBinding:
    prefix: -f
- id: in_suffix
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_check_m
  doc: Specify the CHeckM output File (should be the one created using --tab_table
  type: File
  outputBinding:
    glob: $(inputs.in_check_m)
cwlVersion: v1.1
baseCommand:
- checkm_analysis
