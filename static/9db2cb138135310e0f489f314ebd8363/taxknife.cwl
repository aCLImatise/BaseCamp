class: CommandLineTool
id: taxknife.cwl
inputs:
- id: in_arg_annotate_choose
  doc: "[ --mode ] arg (=annotate)       choose mode:\n\"traverse\": follow nodes\
    \ upwards in\ntaxonomy\n\"annotate\": looks up metainformation\nattached to nodes\
    \ (e.g. names)\n\"tree\": writes a (sub)tree"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_input_column
  doc: '[ --field ] arg (=1)             input column'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_unmappable_taxids_remain
  doc: "[ --keep-not-rank ]            unmappable taxids remain (otherwise mapped\n\
    to root)"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_unknown_taxonomic_ids
  doc: "[ --keep-not-taxid ]           unknown taxonomic IDs are kept (otherwise\n\
    skipped)"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_arg_replace_unknown_taxids
  doc: '[ --set-invalid-traverse ] arg replace unknown taxids by this given value'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_arg_traverse_taxonomy
  doc: "[ --traverse-ranks ] arg       traverse taxonomy up to one of these ranks\n\
    (space separated list)"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_set_nodes_used
  doc: "[ --allnodes ]                 if set, all nodes will be used, not only at\n\
    selected ranks"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_arg_replace_taxids_are
  doc: "[ --set-invalid-annotate ] arg replace all taxids that are invalid by this\n\
    given value"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in__arg_name
  doc: "[ --show ] arg (=name)         either 'name', 'rank', 'path' or\n'taxid-path'"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_arg_select_ranks
  doc: "[ --name-ranks ] arg           select ranks to be considered; if not set,\n\
    default ranks will be used"
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_arg_consider_orderedspace
  doc: "[ --tree-ranks ] arg             consider these taxonomic ranks (ordered\n\
    space separated list from low to high,\ne.g. species family phylum)"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_arg_treenewick_name
  doc: '[ --outfile ] arg (=tree.newick) name of newick file to be written'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_fill_dummy_nodes
  doc: "[ --fill-intermediate ]          fill in dummy intermediate nodes if ranks\n\
    are missing"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_show_scientific_names
  doc: "[ --names ]                      show scientific names in tree (no\ncharacter\
    \ restrictions)\n"
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- taxknife
