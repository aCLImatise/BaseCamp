version 1.0

task KtImportMETAREPEC {
  input {
    String meta_rep_folder
    String name
  }
  command <<<
    ktImportMETAREP_EC \
      ~{meta_rep_folder} \
      ~{name}
  >>>
  runtime {
    docker: "quay.io/biocontainers/krona:2.8--pl526_0"
  }
  parameter_meta {
    meta_rep_folder: "Unpacked METAREP data folder. By default, separate datasets\\nwill be created for each input (see [-c])."
    name: "A name to show in the list of datasets in the Krona chart\\n(if multiple input files are present and [-c] is not\\nspecified). By default, the basename of the file will be\\nused.\\n_________"
  }
  output {
    File out_stdout = stdout()
  }
}