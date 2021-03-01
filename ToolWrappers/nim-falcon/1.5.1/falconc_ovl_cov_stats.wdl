version 1.0

task FalconcOvlcovstats {
  input {
    Boolean? help_syntax
    Boolean? infn_string_required
  }
  command <<<
    falconc ovl_cov_stats \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (infn_string_required) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    infn_string_required: "=, --in-fn=  string  REQUIRED  An overlap file in M4 format, or a FOFN of M4\\nfiles.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}