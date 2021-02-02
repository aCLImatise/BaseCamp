version 1.0

task RsatSupportedorganismsensembl {
  input {
    Boolean? help
    String? db
    Boolean? branch_id
    File? output_file_specified
    String genomics
  }
  command <<<
    rsat supported_organisms_ensembl \
      ~{genomics} \
      ~{if (help) then "-help" else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if (branch_id) then "-branch_id" else ""} \
      ~{if defined(output_file_specified) then ("-o " +  '"' + output_file_specified + '"') else ""}
  >>>
  parameter_meta {
    help: "(must be first argument) display options"
    db: "Supported: ensembl | ensemblgenomes"
    branch_id: "Select only species belonging to a given phylogenetic\\nbranch, given its taxonomic ID."
    output_file_specified: "Output file. If not specified, the result is printed on the\\nstandard output.\\n"
    genomics: "administration"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_specified = "${in_output_file_specified}"
  }
}