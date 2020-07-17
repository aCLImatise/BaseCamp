version 1.0

task FalconcIpa2PolishPrepare {
  input {
    Boolean? help_syntax
    Boolean? _maxnshards_int
    Boolean? _shardprefix_string
    Boolean? _blockprefix_string
    Boolean? _outidsfn_string
  }
  command <<<
    falconc ipa2-polish-prepare \
      ~{true="--help-syntax" false="" help_syntax} \
      ~{true="-m" false="" _maxnshards_int} \
      ~{true="-s" false="" _shardprefix_string} \
      ~{true="-b" false="" _blockprefix_string} \
      ~{true="-o" false="" _outidsfn_string}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _maxnshards_int: "=, --max-nshards=   int     REQUIRED    Maximum number of distributed jobs"
    _shardprefix_string: "=, --shard-prefix=  string  \"shard_id\"  The output. Shard files are (prefix).(shard_id).block_ids"
    _blockprefix_string: "=, --block-prefix=  string  \"block_id\"  Block files are (prefix).(block_id).reads (prepared previously)"
    _outidsfn_string: "=, --out-ids-fn=    string  \"\"          If given, this lists the shard_ids, 0 thru N-1, corresponding to the shard-prefix.block_id files."
  }
}