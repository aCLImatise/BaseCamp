class: CommandLineTool
id: ../../../taxknife.cwl
inputs:
- id: arg_annotate_choose
  doc: '[ --mode ] arg (=annotate)       choose mode: "traverse": follow nodes upwards
    in  taxonomy "annotate": looks up metainformation  attached to nodes (e.g. names)
    "tree": writes a (sub)tree'
  type: boolean
  inputBinding:
    prefix: -m
- id: arg_input_column
  doc: '[ --field ] arg (=1)             input column'
  type: boolean
  inputBinding:
    prefix: -f
- id: unmappable_taxids_remain
  doc: '[ --keep-not-rank ]            unmappable taxids remain (otherwise mapped  to
    root)'
  type: boolean
  inputBinding:
    prefix: -k
- id: unknown_ids_kept
  doc: '[ --keep-not-taxid ]           unknown taxonomic IDs are kept (otherwise  skipped)'
  type: boolean
  inputBinding:
    prefix: -t
- id: arg_replace_unknown_taxids
  doc: '[ --set-invalid-traverse ] arg replace unknown taxids by this given value'
  type: boolean
  inputBinding:
    prefix: -b
- id: arg_traverse_taxonomy
  doc: '[ --traverse-ranks ] arg       traverse taxonomy up to one of these ranks  (space
    separated list)'
  type: boolean
  inputBinding:
    prefix: -r
- id: set_nodes_will
  doc: '[ --allnodes ]                 if set, all nodes will be used, not only at
    selected ranks'
  type: boolean
  inputBinding:
    prefix: -a
- id: arg_replace_taxids_invalid
  doc: '[ --set-invalid-annotate ] arg replace all taxids that are invalid by this
    given value'
  type: boolean
  inputBinding:
    prefix: -c
- id: arg_name_either
  doc: "[ --show ] arg (=name)         either 'name', 'rank', 'path' or  'taxid-path'"
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_select_ranks
  doc: '[ --name-ranks ] arg           select ranks to be considered; if not set,  default
    ranks will be used'
  type: boolean
  inputBinding:
    prefix: -n
- id: arg_consider_ordered
  doc: '[ --tree-ranks ] arg             consider these taxonomic ranks (ordered  space
    separated list from low to high,  e.g. species family phylum)'
  type: boolean
  inputBinding:
    prefix: -q
- id: arg_treenewick_name
  doc: '[ --outfile ] arg (=tree.newick) name of newick file to be written'
  type: boolean
  inputBinding:
    prefix: -o
- id: fill_dummy_nodes
  doc: '[ --fill-intermediate ]          fill in dummy intermediate nodes if ranks
    are missing'
  type: boolean
  inputBinding:
    prefix: -i
- id: show_scientific_names
  doc: '[ --names ]                      show scientific names in tree (no  character
    restrictions)'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- taxknife
