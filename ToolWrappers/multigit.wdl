version 1.0

task Multigit {
  command <<<
    multigit
  >>>
  output {
    File out_stdout = stdout()
  }
}