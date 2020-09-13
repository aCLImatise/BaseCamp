version 1.0

task Mapperplorig {
  command <<<
    mapper_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}