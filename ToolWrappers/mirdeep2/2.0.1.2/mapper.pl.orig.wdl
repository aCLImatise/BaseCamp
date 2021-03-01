version 1.0

task Mapperplorig {
  command <<<
    mapper_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}