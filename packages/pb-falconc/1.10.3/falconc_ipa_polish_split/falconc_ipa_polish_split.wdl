version 1.0

task FalconcIpapolishsplit {
  input {
    Boolean? help_syntax
    Boolean? _maxnshards_int
    Boolean? _shardprefix_string
    Boolean? _blockprefix_string
    Boolean? _string_columns
    Boolean? mb_per_block
    Boolean? blacklist_fn
    String cli_gen_erated
    String ctg_name
    String corresponding
    String shard_prefix_dot_block_id
  }
  command <<<
    falconc ipa_polish_split \
      ~{cli_gen_erated} \
      ~{ctg_name} \
      ~{corresponding} \
      ~{shard_prefix_dot_block_id} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_maxnshards_int) then "-m" else ""} \
      ~{if (_shardprefix_string) then "-s" else ""} \
      ~{if (_blockprefix_string) then "-b" else ""} \
      ~{if (_string_columns) then "-i" else ""} \
      ~{if (mb_per_block) then "--mb-per-block" else ""} \
      ~{if (blacklist_fn) then "--blacklist-fn" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0"
  }
  parameter_meta {
    help_syntax: "advanced:\\nprepend,plurals,.."
    _maxnshards_int: "=, --max-nshards=           int     REQUIRED                     Maximum number\\nof distributed\\njobs"
    _shardprefix_string: "=, --shard-prefix=          string  \\\"shard\\\"                      The output.\\nShard files are\\n(prefix).(shard_id).block_ids"
    _blockprefix_string: "=, --block-prefix=          string  \\\"block\\\"                      Block files are\\n(prefix).(block_id).reads\\n(prepared\\npreviously)"
    _string_columns: "=, --in-read-to-contig-fn=  string  \\\"sorted.read_to_contig.csv\\\"  2-columns: read#"
    mb_per_block: "=               int     REQUIRED                     Try to target\\nmegabases total\\nin all contigs\\nin any block"
    blacklist_fn: "=               string  \\\"\\\"                           Specifies a file\\nwith a list of\\ncontigs to skip\\nfor polishing.\\n"
    cli_gen_erated: "help"
    ctg_name: "-o=, --out-ids-fn=            string  \\\"all_shard_ids\\\"              If given,"
    corresponding: "to the"
    shard_prefix_dot_block_id: "files."
  }
  output {
    File out_stdout = stdout()
  }
}