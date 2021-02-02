version 1.0

task FalconcIpapolishsplit {
  input {
    Boolean? help_syntax
    Boolean? _maxnshards_int
    Boolean? _shardprefix_string
    Boolean? _blockprefix_string
    Boolean? _inreadtocontigfn_string
    Boolean? mb_per_block
    Boolean? blacklist_fn
    String cli_gen_erated
    String ctg_name
    String the_shard_prefix
  }
  command <<<
    falconc ipa_polish_split \
      ~{cli_gen_erated} \
      ~{ctg_name} \
      ~{the_shard_prefix} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_maxnshards_int) then "-m" else ""} \
      ~{if (_shardprefix_string) then "-s" else ""} \
      ~{if (_blockprefix_string) then "-b" else ""} \
      ~{if (_inreadtocontigfn_string) then "-i" else ""} \
      ~{if (mb_per_block) then "--mb-per-block" else ""} \
      ~{if (blacklist_fn) then "--blacklist-fn" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced:prepen\\nd,plurals,.."
    _maxnshards_int: "=, --max-nshards=           int     REQUIRED                     Maximum number\\nof distributed\\njobs"
    _shardprefix_string: "=, --shard-prefix=          string  \\\"shard\\\"                      The output.\\nShard files are\\n(prefix).(shard_\\nid).block_ids"
    _blockprefix_string: "=, --block-prefix=          string  \\\"block\\\"                      Block files are\\n(prefix).(block_\\nid).reads\\n(prepared\\npreviously)"
    _inreadtocontigfn_string: "=, --in-read-to-contig-fn=  string  \\\"sorted.read_to_contig.csv\\\"  2-columns: read#"
    mb_per_block: "=               int     REQUIRED                     Try to target\\nmegabases total\\nin all contigs\\nin any block"
    blacklist_fn: "=               string  \\\"\\\"                           Specifies a file\\nwith a list of\\ncontigs to skip\\nfor polishing.\\n"
    cli_gen_erated: "help"
    ctg_name: "-o=, --out-ids-fn=            string  \\\"all_shard_ids\\\"              If given, this"
    the_shard_prefix: ".block_id files."
  }
  output {
    File out_stdout = stdout()
  }
}