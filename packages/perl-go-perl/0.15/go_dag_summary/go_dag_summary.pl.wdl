version 1.0

task Godagsummarypl {
  input {
    String? writes_errors_defaults
    File? determines_parser_use
    Boolean? use_cache
    String go_dag_summary
    String documentation
  }
  command <<<
    go_dag_summary_pl \
      ~{go_dag_summary} \
      ~{documentation} \
      ~{if defined(writes_errors_defaults) then ("-e " +  '"' + writes_errors_defaults + '"') else ""} \
      ~{if defined(determines_parser_use) then ("-p " +  '"' + determines_parser_use + '"') else ""} \
      ~{if (use_cache) then "-use_cache" else ""}
  >>>
  parameter_meta {
    writes_errors_defaults: "writes parse errors in XML - defaults to STDERR (there should be no\\nparse errors in well formed files)"
    determines_parser_use: "determines which parser to use; if left unspecified, will make a guess\\nbased on file suffix. See below for formats"
    use_cache: "If this switch is specified, then caching mode is turned on.\\nWith caching mode, the first time you parse a file, then an additional\\nfile will be exported in a special format that is fast to parse. This\\nfile will have the same filename as the original file, except it will\\nhave the \\\".cache\\\" suffix.\\nThe next time you parse the file, this program will automatically check\\nfor the existence of the \\\".cache\\\" file. If it exists, and is more recent\\nthan the file you specified, this is parsed instead. If it does not\\nexist, it is rebuilt."
    go_dag_summary: "SYNOPSIS\\ngo-dag-summary ontology/gene_ontology.obo"
    documentation: "<http://www.godatabase.org/dev>"
  }
  output {
    File out_stdout = stdout()
  }
}