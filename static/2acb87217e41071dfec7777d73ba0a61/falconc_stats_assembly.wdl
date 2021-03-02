version 1.0

task FalconcStatsassembly {
  input {
    Boolean? help_syntax
    Boolean? fastafn_string_required
  }
  command <<<
    falconc stats_assembly \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (fastafn_string_required) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    fastafn_string_required: "=, --fasta-fn=  string  REQUIRED  FASTA filename, preferably indexed (with\\n.fai)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}