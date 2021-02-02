version 1.0

task FalconcPbreportsctgtable {
  input {
    Boolean? help_syntax
    Boolean? _fastafn_string
    Boolean? _circfn_string
    Boolean? _gfffn_string
  }
  command <<<
    falconc pbreports_ctg_table \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_fastafn_string) then "-f" else ""} \
      ~{if (_circfn_string) then "-c" else ""} \
      ~{if (_gfffn_string) then "-g" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _fastafn_string: "=, --fasta-fn=  string  REQUIRED  FASTA filename, preferably indexed (with\\n.fai)"
    _circfn_string: "=, --circ-fn=   string  REQUIRED  Text list of circular contigs\\n(newline-delimited)"
    _gfffn_string: "=, --gff-fn=    string  REQUIRED  PacBio coverage GFF file."
  }
  output {
    File out_stdout = stdout()
  }
}