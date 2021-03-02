version 1.0

task FalconcRaptordbfilter {
  input {
    Boolean? help_syntax
    Boolean? blacklistfn_string_set
    String raptor_db_filter
  }
  command <<<
    falconc raptor_db_filter \
      ~{raptor_db_filter} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (blacklistfn_string_set) then "-b" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    blacklistfn_string_set: "=, --blacklist-fn=  string  \\\"\\\"  set blacklist_fn"
    raptor_db_filter: ""
  }
  output {
    File out_stdout = stdout()
  }
}