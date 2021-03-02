version 1.0

task FalconcRaptordbfilter {
  input {
    Boolean? help_syntax
    Boolean? blacklistfn_string_set
  }
  command <<<
    falconc raptor_db_filter \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (blacklistfn_string_set) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    blacklistfn_string_set: "=, --blacklist-fn=  string  \\\"\\\"  set blacklist_fn"
  }
  output {
    File out_stdout = stdout()
  }
}