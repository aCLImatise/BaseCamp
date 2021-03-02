version 1.0

task FalconcPaffilter {
  input {
    Boolean? help_syntax
    Boolean? _faifn_string
    Boolean? _inpaffn_string
    File? outpaffn_string_filename
    String paf_filter
  }
  command <<<
    falconc paf_filter \
      ~{paf_filter} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_faifn_string) then "-f" else ""} \
      ~{if (_inpaffn_string) then "-i" else ""} \
      ~{if (outpaffn_string_filename) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0"
  }
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _faifn_string: "=, --fai-fn=      string  REQUIRED  input fasta-index filename (as in\\nfoo.fasta.fai, but assume foo.fasta is\\nnext to it; foo.fasta must then exist,\\nbut it can be empty since it is ignored)"
    _inpaffn_string: "=, --in-paf-fn=   string  \\\"-\\\"       paf filename ('-' => stdin)"
    outpaffn_string_filename: "=, --out-paf-fn=  string  \\\"-\\\"       output paf filename, with only the\\ncontigs inside the fasta ('-' => stdout)\\n"
    paf_filter: ""
  }
  output {
    File out_stdout = stdout()
    File out_outpaffn_string_filename = "${in_outpaffn_string_filename}"
  }
}