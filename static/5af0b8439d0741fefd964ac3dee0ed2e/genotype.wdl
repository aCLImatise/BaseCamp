version 1.0

task Genotype {
  command <<<
    genotype
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}