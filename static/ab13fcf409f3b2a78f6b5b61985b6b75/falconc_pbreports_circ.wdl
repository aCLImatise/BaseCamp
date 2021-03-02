version 1.0

task FalconcPbreportscirc {
  input {
    Boolean? help_syntax
    Boolean? fastafn_string_required
    Boolean? _circfn_string
  }
  command <<<
    falconc pbreports_circ \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (fastafn_string_required) then "-f" else ""} \
      ~{if (_circfn_string) then "-c" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    fastafn_string_required: "=, --fasta-fn=  string  REQUIRED  FASTA filename, preferably indexed (with\\n.fai)"
    _circfn_string: "=, --circ-fn=   string  REQUIRED  Text list of circular contigs\\n(newline-delimited)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}