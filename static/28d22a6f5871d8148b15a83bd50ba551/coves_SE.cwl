class: CommandLineTool
id: coves_SE.cwl
inputs:
- id: in_show_pairs_just
  doc: ': show all pairs, not just Watson-Crick'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_set_expected_default
  doc: ': set expected background GC composition (default 0.5)'
  type: double?
  inputBinding:
    prefix: -g
- id: in_mountain_representation_structural
  doc: ': mountain representation of structural alignment'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_secondary_structure_string
  doc: ": secondary structure string representation of\nstructural alignment\n"
  type: boolean?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- coves-SE
