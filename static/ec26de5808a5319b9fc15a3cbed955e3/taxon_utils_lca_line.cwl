class: CommandLineTool
id: taxon_utils_lca_line.cwl
inputs:
- id: in_taxonomy
  doc: Taxonomy file  [required]
  type: File?
  inputBinding:
    prefix: --taxonomy
- id: in_no_lca
  doc: File to which write records with no LCA
  type: File?
  inputBinding:
    prefix: --no-lca
- id: in_only_ranked
  doc: "If set, only taxa that have a rank will be used in\nthe lineageself. This\
    \ is not advised for lineages\nsuch as Viruses, where the top levels have no rank"
  type: boolean?
  inputBinding:
    prefix: --only-ranked
- id: in_separator
  doc: separator for taxon_ids (defaults to TAB)
  type: string?
  inputBinding:
    prefix: --separator
- id: in_input_file
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
- taxon-utils
- lca_line
