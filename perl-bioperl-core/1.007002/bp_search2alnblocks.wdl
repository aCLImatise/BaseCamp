version 1.0

task BpSearch2alnblocks.pl {
  input {
    Boolean? v_slash_verbose
  }
  command <<<
    bp_search2alnblocks.pl \
      ~{true="-v/--verbose" false="" v_slash_verbose}
  >>>
  parameter_meta {
    v_slash_verbose: "Turn on debugging"
  }
}