version 1.0

task FalconcIpashardblocksm4 {
  input {
    Boolean? help_syntax
    Boolean? _maxnshards_int
    Boolean? _blockprefix_string
    Boolean? _outidsfn_string
    String jobs
  }
  command <<<
    falconc ipa_shard_blocks_m4 \
      ~{jobs} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_maxnshards_int) then "-m" else ""} \
      ~{if (_blockprefix_string) then "-b" else ""} \
      ~{if (_outidsfn_string) then "-o" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _maxnshards_int: "=, --max-nshards=   int     REQUIRED         Maximum number of distributed"
    _blockprefix_string: "=, --block-prefix=  string  \\\"block\\\"          Block files are\\n(prefix).(block_id).m4\\n(prepared previously)"
    _outidsfn_string: "=, --out-ids-fn=    string  \\\"all_shard_ids\\\"  If given, this lists the\\nshard_ids, 0 thru N-1,\\ncorresponding to the\\nshard-prefix.block_id files.\\n"
    jobs: "-s=, --shard-prefix=  string  \\\"shard\\\"          The output. Shard files are"
  }
  output {
    File out_stdout = stdout()
  }
}