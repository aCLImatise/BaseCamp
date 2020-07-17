version 1.0

task HgLoadChain {
  input {
    Boolean? t_index
    Boolean? no_bin
    Boolean? no_sort
    String? old_table
    String? sql_table
    String? norm_score
    String? q_prefix
    Boolean? test
    String database
    String chr_n_track
    String chr_ndot_chain
  }
  command <<<
    hgLoadChain \
      ~{database} \
      ~{chr_n_track} \
      ~{chr_ndot_chain} \
      ~{true="-tIndex" false="" t_index} \
      ~{true="-noBin" false="" no_bin} \
      ~{true="-noSort" false="" no_sort} \
      ~{if defined(old_table) then ("-oldTable " +  '"' + old_table + '"') else ""} \
      ~{if defined(sql_table) then ("-sqlTable " +  '"' + sql_table + '"') else ""} \
      ~{if defined(norm_score) then ("-normScore " +  '"' + norm_score + '"') else ""} \
      ~{if defined(q_prefix) then ("-qPrefix " +  '"' + q_prefix + '"') else ""} \
      ~{true="-test" false="" test}
  >>>
  parameter_meta {
    t_index: "Include tName in indexes (for non-split chain tables)"
    no_bin: "suppress bin field, default: bin field is added"
    no_sort: "Don't sort by target (memory-intensive) -- input *must* be sorted by target already if this option is used."
    old_table: "to existing table, default: create new table"
    sql_table: "Create table from .sql file"
    norm_score: "normalized score column to table, default: not added"
    q_prefix: "prepend \"xxx\" to query name"
    test: "suppress loading to database"
    database: ""
    chr_n_track: ""
    chr_ndot_chain: ""
  }
}