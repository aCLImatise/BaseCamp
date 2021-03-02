version 1.0

task FalconcIpashardmapping {
  input {
    Boolean? help_syntax
    Boolean? _maxnshards_int
    Boolean? _shardprefix_string
    Boolean? _nqueryblocks_int
    Boolean? n_target_blocks
    Boolean? outidsfn_string_given
    String ipa_shard_mapping
  }
  command <<<
    falconc ipa_shard_mapping \
      ~{ipa_shard_mapping} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_maxnshards_int) then "-m" else ""} \
      ~{if (_shardprefix_string) then "-s" else ""} \
      ~{if (_nqueryblocks_int) then "-n" else ""} \
      ~{if (n_target_blocks) then "--n_target_blocks" else ""} \
      ~{if (outidsfn_string_given) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _maxnshards_int: "=, --max-nshards=     int     REQUIRED  Maximum number of distributed jobs"
    _shardprefix_string: "=, --shard-prefix=    string  \\\"shard\\\"   The output. Shard files are\\n(prefix).(shard_id).block_ids\\n(though they really are block_id\\nranges)."
    _nqueryblocks_int: "=, --n_query_blocks=  int     REQUIRED  Number of blocks in query db"
    n_target_blocks: "=      int     REQUIRED  Number of blocks in target db"
    outidsfn_string_given: "=, --out-ids-fn=      string  \\\"\\\"        If given, this lists the shard_ids,\\n0 thru N-1, corresponding to the\\nshard-prefix.block_id files. Useful\\nfor Cromwell.\\n"
    ipa_shard_mapping: ""
  }
  output {
    File out_stdout = stdout()
  }
}