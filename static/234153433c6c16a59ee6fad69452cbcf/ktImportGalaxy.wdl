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
  parameter_meta {
    tax_rep: "Results from the \"Fetch taxonomic representation\" or \"Find lowest diagnostic rank\" tools in Galaxy. By default, separate datasets will be created for each input (see [-c])."
    name: "A name to show in the list of datasets in the Krona chart (if multiple input files are present and [-c] is not specified). By default, the basename of the file will be used. _________"
  }
}