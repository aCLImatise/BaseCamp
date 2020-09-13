version 1.0

task FalconcPbreportscirc {
  input {
    Boolean? help_syntax
    Boolean? _fastafn_string
    Boolean? _circfn_string
  }
  command <<<
    falconc pbreports_circ \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_fastafn_string) then "-f" else ""} \
      ~{if (_circfn_string) then "-c" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _fastafn_string: "=, --fasta-fn=  string  REQUIRED  FASTA filename, preferably indexed (with\\n.fai)"
    _circfn_string: "=, --circ-fn=   string  REQUIRED  Text list of circular contigs\\n(newline-delimited)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}