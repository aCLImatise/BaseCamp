version 1.0

task Gepard {
  command <<<
    gepard
  >>>
  output {
    File out_stdout = stdout()
  }
}