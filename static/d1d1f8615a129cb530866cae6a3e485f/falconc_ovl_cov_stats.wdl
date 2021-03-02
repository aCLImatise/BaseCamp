version 1.0

task FalconcOvlcovstats {
  input {
    Boolean? help_syntax
    Boolean? infn_string_required
    String ovl_cov_stats
  }
  command <<<
    falconc ovl_cov_stats \
      ~{ovl_cov_stats} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (infn_string_required) then "-i" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    infn_string_required: "=, --in-fn=  string  REQUIRED  An overlap file in M4 format, or a FOFN of M4\\nfiles.\\n"
    ovl_cov_stats: ""
  }
  output {
    File out_stdout = stdout()
  }
}