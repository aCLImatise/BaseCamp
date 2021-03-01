version 1.0

task PhizzBuildgenes {
  input {
    String gene_file
  }
  command <<<
    phizz build_genes \
      ~{gene_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}