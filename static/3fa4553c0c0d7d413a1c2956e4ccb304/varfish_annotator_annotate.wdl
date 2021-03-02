version 1.0

task VarfishannotatorAnnotate {
  input {
    Boolean? case_id
    Boolean? contig_regex
    Boolean? set_id
    String annotate
  }
  command <<<
    varfish_annotator annotate \
      ~{annotate} \
      ~{if (case_id) then "--case-id" else ""} \
      ~{if (contig_regex) then "--contig-regex" else ""} \
      ~{if (set_id) then "--set-id" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/varfish-annotator-cli:0.14--0"
  }
  parameter_meta {
    case_id: "The value to use for case ID\\nDefault: ."
    contig_regex: "Regular expression to use for selection of contigs\\nDefault: ^(chr)?(\\d+|X|Y|M|MT)$"
    set_id: "The value to use for set ID\\nDefault: .\\n"
    annotate: ""
  }
  output {
    File out_stdout = stdout()
  }
}