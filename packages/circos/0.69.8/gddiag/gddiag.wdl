version 1.0

task Gddiag {
  command <<<
    gddiag
  >>>
  output {
    File out_stdout = stdout()
  }
}