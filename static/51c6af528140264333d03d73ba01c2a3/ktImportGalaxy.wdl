version 1.0

task KtImportGalaxy {
  input {
    String tax_rep
    String name
  }
  command <<<
    ktImportGalaxy \
      ~{tax_rep} \
      ~{name}
  >>>
  runtime {
    docker: "quay.io/biocontainers/krona:2.8--pl526_0"
  }
  parameter_meta {
    tax_rep: "Results from the \\\"Fetch taxonomic representation\\\" or \\\"Find lowest\\ndiagnostic rank\\\" tools in Galaxy. By default, separate datasets\\nwill be created for each input (see [-c])."
    name: "A name to show in the list of datasets in the Krona chart (if\\nmultiple input files are present and [-c] is not specified). By\\ndefault, the basename of the file will be used.\\n_________"
  }
  output {
    File out_stdout = stdout()
  }
}