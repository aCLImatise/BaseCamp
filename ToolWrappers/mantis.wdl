version 1.0

task Mantis {
  command <<<
    mantis
  >>>
  output {
    File out_stdout = stdout()
  }
}