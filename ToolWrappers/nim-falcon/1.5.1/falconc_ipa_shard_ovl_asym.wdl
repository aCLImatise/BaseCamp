version 1.0

task FalconcIpashardovlasym {
  input {
    Boolean? help_syntax
    Boolean? _maxnshards_int
    Boolean? _shardprefix_string
    Boolean? _int_required
    Boolean? outidsfn_string_corresponding
  }
  command <<<
    falconc ipa_shard_ovl_asym \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_maxnshards_int) then "-m" else ""} \
      ~{if (_shardprefix_string) then "-s" else ""} \
      ~{if (_int_required) then "-n" else ""} \
      ~{if (outidsfn_string_corresponding) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _maxnshards_int: "=, --max-nshards=   int     REQUIRED  Maximum number of distributed jobs"
    _shardprefix_string: "=, --shard-prefix=  string  \\\"shard\\\"   The output. Shard files are\\n(prefix).(shard_id).block_ids (though\\nthey really are block_id ranges)."
    _int_required: "=, --n=             int     REQUIRED  Generate comparisons for\\nupper-triangle of nxn matrix"
    outidsfn_string_corresponding: "=, --out-ids-fn=    string  \\\"\\\"        If given, this lists the shard_ids, 0\\nthru N-1, corresponding to the\\nshard-prefix.block_id files. Useful\\nfor Cromwell.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}