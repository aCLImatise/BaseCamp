version 1.0

task FalconcStatsassembly {
  input {
    Boolean? help_syntax
    Boolean? _fastafn_string
  }
  command <<<
    falconc stats_assembly \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_fastafn_string) then "-f" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _fastafn_string: "=, --fasta-fn=  string  REQUIRED  FASTA filename, preferably indexed (with\\n.fai)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}