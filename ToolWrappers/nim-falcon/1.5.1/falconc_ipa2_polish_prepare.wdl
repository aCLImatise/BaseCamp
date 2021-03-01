version 1.0

task FalconcIpa2polishprepare {
  input {
    Boolean? help_syntax
    Boolean? _maxnshards_int
    Boolean? _shardprefix_string
    Boolean? _blockprefix_string
    Boolean? outidsfn_string_given
  }
  command <<<
    falconc ipa2_polish_prepare \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_maxnshards_int) then "-m" else ""} \
      ~{if (_shardprefix_string) then "-s" else ""} \
      ~{if (_blockprefix_string) then "-b" else ""} \
      ~{if (outidsfn_string_given) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _maxnshards_int: "=, --max-nshards=   int     REQUIRED    Maximum number of distributed jobs"
    _shardprefix_string: "=, --shard-prefix=  string  \\\"shard_id\\\"  The output. Shard files are\\n(prefix).(shard_id).block_ids"
    _blockprefix_string: "=, --block-prefix=  string  \\\"block_id\\\"  Block files are\\n(prefix).(block_id).reads (prepared\\npreviously)"
    outidsfn_string_given: "=, --out-ids-fn=    string  \\\"\\\"          If given, this lists the shard_ids,\\n0 thru N-1, corresponding to the\\nshard-prefix.block_id files.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}