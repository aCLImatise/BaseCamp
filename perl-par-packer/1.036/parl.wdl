version 1.0

task Parl {
  command <<<
    parl
  >>>
  output {
    File out_stdout = stdout()
  }
}