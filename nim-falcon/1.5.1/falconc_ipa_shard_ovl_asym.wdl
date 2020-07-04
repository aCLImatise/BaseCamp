version 1.0

task FalconcIpaShardOvlAsym {
  input {
    Boolean? help_syntax
    Boolean? _maxnshards_int
    Boolean? _shardprefix_string
    Boolean? _int_required
    Boolean? _outidsfn_string
  }
  command <<<
    falconc ipa-shard-ovl-asym \
      ~{true="--help-syntax" false="" help_syntax} \
      ~{true="-m" false="" _maxnshards_int} \
      ~{true="-s" false="" _shardprefix_string} \
      ~{true="-n" false="" _int_required} \
      ~{true="-o" false="" _outidsfn_string}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _maxnshards_int: "=, --max-nshards=   int     REQUIRED  Maximum number of distributed jobs"
    _shardprefix_string: "=, --shard-prefix=  string  \"shard\"   The output. Shard files are (prefix).(shard_id).block_ids (though they really are block_id ranges)."
    _int_required: "=, --n=             int     REQUIRED  Generate comparisons for upper-triangle of nxn matrix"
    _outidsfn_string: "=, --out-ids-fn=    string  \"\"        If given, this lists the shard_ids, 0 thru N-1, corresponding to the shard-prefix.block_id files. Useful for Cromwell."
  }
}