version 1.0

task FalconcPbreportscirc {
  input {
    Boolean? help_syntax
    Boolean? fastafn_string_required
    Boolean? _circfn_string
    String pb_reports_circ
  }
  command <<<
    falconc pbreports_circ \
      ~{pb_reports_circ} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (fastafn_string_required) then "-f" else ""} \
      ~{if (_circfn_string) then "-c" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    fastafn_string_required: "=, --fasta-fn=  string  REQUIRED  FASTA filename, preferably indexed (with\\n.fai)"
    _circfn_string: "=, --circ-fn=   string  REQUIRED  Text list of circular contigs\\n(newline-delimited)\\n"
    pb_reports_circ: ""
  }
  output {
    File out_stdout = stdout()
  }
}