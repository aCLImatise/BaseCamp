version 1.0

task Mglobrotate {
  command <<<
    mglobrotate
  >>>
  output {
    File out_stdout = stdout()
  }
}