version 1.0

task VarfishannotatorAnnotate {
  input {
    Boolean? case_id
    Boolean? contig_regex
    String annotate
  }
  command <<<
    varfish_annotator annotate \
      ~{annotate} \
      ~{if (case_id) then "--case-id" else ""} \
      ~{if (contig_regex) then "--contig-regex" else ""}
  >>>
  parameter_meta {
    case_id: "The value to use for case ID\\nDefault: ."
    contig_regex: "Regular expression to use for selection of contigs\\nDefault: ^(chr)?(\\d+|X|Y|M|MT)$"
    annotate: ""
  }
  output {
    File out_stdout = stdout()
  }
}