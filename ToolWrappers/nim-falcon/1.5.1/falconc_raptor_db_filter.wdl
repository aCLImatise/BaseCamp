version 1.0

task FalconcRaptordbfilter {
  input {
    Boolean? help_syntax
    Boolean? _blacklistfn_string
  }
  command <<<
    falconc raptor_db_filter \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_blacklistfn_string) then "-b" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _blacklistfn_string: "=, --blacklist-fn=  string  \\\"\\\"  set blacklist_fn"
  }
  output {
    File out_stdout = stdout()
  }
}