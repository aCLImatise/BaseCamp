class: CommandLineTool
id: ../../../rsat_supported_organisms_ucsc.cwl
inputs:
- id: in_suu_ported_organism_uscs
  doc: "\e[1mAUTHORS\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_jacques_dot_van_helden_backslash_at_univ_am_udot_fr
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_examples
  doc: "Retrieve mammal genome disponible on UCSC.\nsupported-organims-uscs.pl -taxon\
    \ mammal"
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
- supported-organisms-ucsc
