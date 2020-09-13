version 1.0

task Nquire {
  command <<<
    nquire
  >>>
  output {
    File out_stdout = stdout()
  }
}