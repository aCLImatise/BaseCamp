version 1.0

task AddgffinfoKegg {
  input {
    Boolean? verbose
    String? input_file
    String? output_file
  }
  command <<<
    add_gff_info kegg \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-c, --email TEXT    Contact email  [required]\\n-d, --description   Add Kegg description\\n-p, --pathways      Add pathways ID involved\\n-m, --kegg-id TEXT  In which attribute the Kegg ID is stored (defaults to\\n*gene_id*)\\n--help              Show this message and exit.\\n"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}