class: CommandLineTool
id: taxon_utils_lca_line.cwl
inputs:
- id: taxonomy
  doc: Taxonomy file  [required]
  type: string
  inputBinding:
    prefix: --taxonomy
- id: no_lca
  doc: File to which write records with no LCA
  type: File
  inputBinding:
    prefix: --no-lca
- id: only_ranked
  doc: If set, only taxa that have a rank will be used in the lineageself. This is
    not advised for lineages such as Viruses, where the top levels have no rank
  type: boolean
  inputBinding:
    prefix: --only-ranked
- id: separator
  doc: separator for taxon_ids (defaults to TAB)
  type: string
  inputBinding:
    prefix: --separator
outputs: []
cwlVersion: v1.1
baseCommand:
- taxon-utils
- lca_line
