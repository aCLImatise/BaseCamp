version 1.0

task PhizzBuildgenes {
  input {
    String? db_name
    File? path
    String gene_file
  }
  command <<<
    phizz build_genes \
      ~{gene_file} \
      ~{if defined(db_name) then ("--db_name " +  '"' + db_name + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""}
  >>>
  parameter_meta {
    db_name: ""
    path: ""
    gene_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}