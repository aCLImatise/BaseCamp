class: CommandLineTool
id: quasitools_drmutations_MUTATION_DB.cwl
inputs:
- id: in_quasi_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dr_mutations
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_variants
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_bed_four_file
  doc: ''
  type: long
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- quasitools
- drmutations
- MUTATION_DB
