version 1.0

task KtImportMGRAST {
  input {
    String mgr_ast_table
    String name
    String e_value_dot
  }
  command <<<
    ktImportMGRAST \
      ~{mgr_ast_table} \
      ~{name} \
      ~{e_value_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mgr_ast_table: "A table exported from MG-RAST. It can be from organism or\\nfunctional analysis, but all tables being imported should be\\nconsistent. By default, separate datasets will be created for\\neach input (see [-c])."
    name: "A name to show in the list of datasets in the Krona chart (if\\nmultiple input files are present and [-c] is not specified).\\nBy default, the basename of the file will be used.\\n_________"
    e_value_dot: "[-u <string>]   URL of Krona resources to use instead of bundling them with"
  }
  output {
    File out_stdout = stdout()
  }
}