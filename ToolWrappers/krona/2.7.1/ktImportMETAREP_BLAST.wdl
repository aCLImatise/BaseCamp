version 1.0

task KtImportMETAREPBLAST {
  input {
    String meta_rep_folder
    String name
  }
  command <<<
    ktImportMETAREP_BLAST \
      ~{meta_rep_folder} \
      ~{name}
  >>>
  parameter_meta {
    meta_rep_folder: "Unpacked METAREP data folder. By default, separate datasets\\nwill be created for each input (see [-c])."
    name: "A name to show in the list of datasets in the Krona chart\\n(if multiple input files are present and [-c] is not\\nspecified). By default, the basename of the file will be\\nused.\\n_________"
  }
  output {
    File out_stdout = stdout()
  }
}