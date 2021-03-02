version 1.0

task FalconcPbreportsctgtable {
  input {
    Boolean? help_syntax
    Boolean? fastafn_string_required
    Boolean? _circfn_string
    Boolean? _gfffn_string
    String pb_reports_ctg_table
  }
  command <<<
    falconc pbreports_ctg_table \
      ~{pb_reports_ctg_table} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (fastafn_string_required) then "-f" else ""} \
      ~{if (_circfn_string) then "-c" else ""} \
      ~{if (_gfffn_string) then "-g" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    fastafn_string_required: "=, --fasta-fn=  string  REQUIRED  FASTA filename, preferably indexed (with\\n.fai)"
    _circfn_string: "=, --circ-fn=   string  REQUIRED  Text list of circular contigs\\n(newline-delimited)"
    _gfffn_string: "=, --gff-fn=    string  REQUIRED  PacBio coverage GFF file."
    pb_reports_ctg_table: ""
  }
  output {
    File out_stdout = stdout()
  }
}