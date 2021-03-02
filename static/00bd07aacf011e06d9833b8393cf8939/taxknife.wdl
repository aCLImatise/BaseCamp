version 1.0

task Taxknife {
  input {
    Boolean? arg_annotate_choose
    Boolean? arg_input_column
    Boolean? unmappable_taxids_remain
    Boolean? unknown_taxonomic_ids
    Boolean? arg_replace_unknown_taxids
    Boolean? arg_traverse_taxonomy
    Boolean? set_nodes_used
    Boolean? arg_replace_taxids_are
    Boolean? _arg_name
    Boolean? arg_select_ranks
    Boolean? arg_consider_orderedspace
    Boolean? arg_treenewick_name
    Boolean? fill_dummy_nodes
    Boolean? show_scientific_names
  }
  command <<<
    taxknife \
      ~{if (arg_annotate_choose) then "-m" else ""} \
      ~{if (arg_input_column) then "-f" else ""} \
      ~{if (unmappable_taxids_remain) then "-k" else ""} \
      ~{if (unknown_taxonomic_ids) then "-t" else ""} \
      ~{if (arg_replace_unknown_taxids) then "-b" else ""} \
      ~{if (arg_traverse_taxonomy) then "-r" else ""} \
      ~{if (set_nodes_used) then "-a" else ""} \
      ~{if (arg_replace_taxids_are) then "-c" else ""} \
      ~{if (_arg_name) then "-s" else ""} \
      ~{if (arg_select_ranks) then "-n" else ""} \
      ~{if (arg_consider_orderedspace) then "-q" else ""} \
      ~{if (arg_treenewick_name) then "-o" else ""} \
      ~{if (fill_dummy_nodes) then "-i" else ""} \
      ~{if (show_scientific_names) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_annotate_choose: "[ --mode ] arg (=annotate)       choose mode:\\n\\\"traverse\\\": follow nodes upwards in\\ntaxonomy\\n\\\"annotate\\\": looks up metainformation\\nattached to nodes (e.g. names)\\n\\\"tree\\\": writes a (sub)tree"
    arg_input_column: "[ --field ] arg (=1)             input column"
    unmappable_taxids_remain: "[ --keep-not-rank ]            unmappable taxids remain (otherwise mapped\\nto root)"
    unknown_taxonomic_ids: "[ --keep-not-taxid ]           unknown taxonomic IDs are kept (otherwise\\nskipped)"
    arg_replace_unknown_taxids: "[ --set-invalid-traverse ] arg replace unknown taxids by this given value"
    arg_traverse_taxonomy: "[ --traverse-ranks ] arg       traverse taxonomy up to one of these ranks\\n(space separated list)"
    set_nodes_used: "[ --allnodes ]                 if set, all nodes will be used, not only at\\nselected ranks"
    arg_replace_taxids_are: "[ --set-invalid-annotate ] arg replace all taxids that are invalid by this\\ngiven value"
    _arg_name: "[ --show ] arg (=name)         either 'name', 'rank', 'path' or\\n'taxid-path'"
    arg_select_ranks: "[ --name-ranks ] arg           select ranks to be considered; if not set,\\ndefault ranks will be used"
    arg_consider_orderedspace: "[ --tree-ranks ] arg             consider these taxonomic ranks (ordered\\nspace separated list from low to high,\\ne.g. species family phylum)"
    arg_treenewick_name: "[ --outfile ] arg (=tree.newick) name of newick file to be written"
    fill_dummy_nodes: "[ --fill-intermediate ]          fill in dummy intermediate nodes if ranks\\nare missing"
    show_scientific_names: "[ --names ]                      show scientific names in tree (no\\ncharacter restrictions)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}