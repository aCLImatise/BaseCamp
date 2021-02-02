version 1.0

task FalconcOvlcovstats {
  input {
    Boolean? help_syntax
    Boolean? _infn_string
  }
  command <<<
    falconc ovl_cov_stats \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_infn_string) then "-i" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _infn_string: "=, --in-fn=  string  REQUIRED  An overlap file in M4 format, or a FOFN of M4\\nfiles.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}