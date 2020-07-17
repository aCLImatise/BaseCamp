version 1.0

task FalconcIpaShardBlocksM4 {
  input {
    Boolean? help_syntax
    Boolean? _maxnshards_int
    Boolean? _shardprefix_string
    Boolean? _blockprefix_string
    Boolean? _outidsfn_string
  }
  command <<<
    falconc ipa-shard-blocks-m4 \
      ~{true="--help-syntax" false="" help_syntax} \
      ~{true="-m" false="" _maxnshards_int} \
      ~{true="-s" false="" _shardprefix_string} \
      ~{true="-b" false="" _blockprefix_string} \
      ~{true="-o" false="" _outidsfn_string}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _maxnshards_int: "=, --max-nshards=   int     REQUIRED         Maximum number of distributed jobs"
    _shardprefix_string: "=, --shard-prefix=  string  \"shard\"          The output. Shard files are (prefix).(shard_id).block_ids"
    _blockprefix_string: "=, --block-prefix=  string  \"block\"          Block files are (prefix).(block_id).m4 (prepared previously)"
    _outidsfn_string: "=, --out-ids-fn=    string  \"all_shard_ids\"  If given, this lists the shard_ids, 0 thru N-1, corresponding to the shard-prefix.block_id files."
  }
}