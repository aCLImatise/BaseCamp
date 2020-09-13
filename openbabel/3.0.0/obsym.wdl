version 1.0

task Obsym {
  command <<<
    obsym
  >>>
  output {
    File out_stdout = stdout()
  }
}