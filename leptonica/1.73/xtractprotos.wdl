version 1.0

task Xtractprotos {
  command <<<
    xtractprotos
  >>>
  output {
    File out_stdout = stdout()
  }
}