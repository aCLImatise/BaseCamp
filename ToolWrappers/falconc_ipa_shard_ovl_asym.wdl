version 1.0

task FalconcIpashardovlasym {
  input {
    Boolean? help_syntax
    Boolean? _maxnshards_int
    Boolean? _shardprefix_string
    Boolean? _n_int
    Boolean? _outidsfn_string
  }
  command <<<
    falconc ipa_shard_ovl_asym \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_maxnshards_int) then "-m" else ""} \
      ~{if (_shardprefix_string) then "-s" else ""} \
      ~{if (_n_int) then "-n" else ""} \
      ~{if (_outidsfn_string) then "-o" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _maxnshards_int: "=, --max-nshards=   int     REQUIRED  Maximum number of distributed jobs"
    _shardprefix_string: "=, --shard-prefix=  string  \\\"shard\\\"   The output. Shard files are\\n(prefix).(shard_id).block_ids (though\\nthey really are block_id ranges)."
    _n_int: "=, --n=             int     REQUIRED  Generate comparisons for\\nupper-triangle of nxn matrix"
    _outidsfn_string: "=, --out-ids-fn=    string  \\\"\\\"        If given, this lists the shard_ids, 0\\nthru N-1, corresponding to the\\nshard-prefix.block_id files. Useful\\nfor Cromwell.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}