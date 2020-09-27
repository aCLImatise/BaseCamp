class: CommandLineTool
id: rsat_supported_organisms_ensemblgenomes.cwl
inputs:
- id: in_supported_organisms_ensembl_genomes
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_expressions_dot
  doc: "\e[1mspecies_taxid\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_jacques_dot_van_helden_backslash_at_univ_am_udot_fr
  doc: "\e[1mCATEGORY\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: "\e[1mUSAGE\e[0m"
  type: string
  inputBinding:
    position: 1
- id: in_attribute_dot
  doc: "\e[1mSEE ALSO\e[0m"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- supported-organisms-ensemblgenomes
