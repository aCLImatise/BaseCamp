version 1.0

task PhizzBuildgenes {
  input {
    File? db_name
    String gene_file
  }
  command <<<
    phizz build_genes \
      ~{gene_file} \
      ~{if defined(db_name) then ("--db_name " +  '"' + db_name + '"') else ""}
  >>>
  parameter_meta {
    db_name: "--path TEXT\\n--help          Show this message and exit.\\n"
    gene_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}