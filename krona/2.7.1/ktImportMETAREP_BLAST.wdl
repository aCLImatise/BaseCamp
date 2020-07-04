version 1.0

task KtImportMETAREPBLAST {
  input {
    String meta_rep_folder
    String name
  }
  command <<<
    ktImportMETAREP-BLAST \
      ~{meta_rep_folder} \
      ~{name}
  >>>
  parameter_meta {
    meta_rep_folder: "Unpacked METAREP data folder. By default, separate datasets will be created for each input (see [-c])."
    name: "A name to show in the list of datasets in the Krona chart (if multiple input files are present and [-c] is not specified). By default, the basename of the file will be used. _________"
  }
}