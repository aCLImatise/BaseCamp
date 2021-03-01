version 1.0

task ScgDistributions {
  input {
    String single
    String cell
    String genotype_r
  }
  command <<<
    scg distributions_ \
      ~{single} \
      ~{cell} \
      ~{genotype_r}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    single: ""
    cell: ""
    genotype_r: ""
  }
  output {
    File out_stdout = stdout()
  }
}