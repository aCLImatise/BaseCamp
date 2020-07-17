version 1.0

task KtImportMGRAST {
  input {
    String mgr_ast_table
    String name
  }
  command <<<
    ktImportMGRAST \
      ~{mgr_ast_table} \
      ~{name}
  >>>
  parameter_meta {
    mgr_ast_table: "A table exported from MG-RAST. It can be from organism or functional analysis, but all tables being imported should be consistent. By default, separate datasets will be created for each input (see [-c])."
    name: "A name to show in the list of datasets in the Krona chart (if multiple input files are present and [-c] is not specified). By default, the basename of the file will be used. _________"
  }
}