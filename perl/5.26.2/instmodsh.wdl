version 1.0

task Instmodsh {
  command <<<
    instmodsh
  >>>
  output {
    File out_stdout = stdout()
  }
}