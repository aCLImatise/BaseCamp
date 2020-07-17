version 1.0

task Taxknife {
  input {
    Boolean? arg_annotate_choose
    Boolean? arg_input_column
    Boolean? unmappable_taxids_remain
    Boolean? unknown_ids_kept
    Boolean? arg_replace_unknown_taxids
    Boolean? arg_traverse_taxonomy
    Boolean? set_nodes_will
    Boolean? arg_replace_taxids_invalid
    Boolean? arg_name_either
    Boolean? arg_select_ranks
    Boolean? arg_consider_ordered
    Boolean? arg_treenewick_name
    Boolean? fill_dummy_nodes
    Boolean? show_scientific_names
  }
  command <<<
    taxknife \
      ~{true="-m" false="" arg_annotate_choose} \
      ~{true="-f" false="" arg_input_column} \
      ~{true="-k" false="" unmappable_taxids_remain} \
      ~{true="-t" false="" unknown_ids_kept} \
      ~{true="-b" false="" arg_replace_unknown_taxids} \
      ~{true="-r" false="" arg_traverse_taxonomy} \
      ~{true="-a" false="" set_nodes_will} \
      ~{true="-c" false="" arg_replace_taxids_invalid} \
      ~{true="-s" false="" arg_name_either} \
      ~{true="-n" false="" arg_select_ranks} \
      ~{true="-q" false="" arg_consider_ordered} \
      ~{true="-o" false="" arg_treenewick_name} \
      ~{true="-i" false="" fill_dummy_nodes} \
      ~{true="-v" false="" show_scientific_names}
  >>>
  parameter_meta {
    arg_annotate_choose: "[ --mode ] arg (=annotate)       choose mode: \"traverse\": follow nodes upwards in  taxonomy \"annotate\": looks up metainformation  attached to nodes (e.g. names) \"tree\": writes a (sub)tree"
    arg_input_column: "[ --field ] arg (=1)             input column"
    unmappable_taxids_remain: "[ --keep-not-rank ]            unmappable taxids remain (otherwise mapped  to root)"
    unknown_ids_kept: "[ --keep-not-taxid ]           unknown taxonomic IDs are kept (otherwise  skipped)"
    arg_replace_unknown_taxids: "[ --set-invalid-traverse ] arg replace unknown taxids by this given value"
    arg_traverse_taxonomy: "[ --traverse-ranks ] arg       traverse taxonomy up to one of these ranks  (space separated list)"
    set_nodes_will: "[ --allnodes ]                 if set, all nodes will be used, not only at selected ranks"
    arg_replace_taxids_invalid: "[ --set-invalid-annotate ] arg replace all taxids that are invalid by this given value"
    arg_name_either: "[ --show ] arg (=name)         either 'name', 'rank', 'path' or  'taxid-path'"
    arg_select_ranks: "[ --name-ranks ] arg           select ranks to be considered; if not set,  default ranks will be used"
    arg_consider_ordered: "[ --tree-ranks ] arg             consider these taxonomic ranks (ordered  space separated list from low to high,  e.g. species family phylum)"
    arg_treenewick_name: "[ --outfile ] arg (=tree.newick) name of newick file to be written"
    fill_dummy_nodes: "[ --fill-intermediate ]          fill in dummy intermediate nodes if ranks are missing"
    show_scientific_names: "[ --names ]                      show scientific names in tree (no  character restrictions)"
  }
}