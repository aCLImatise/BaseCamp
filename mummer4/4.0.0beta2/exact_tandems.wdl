version 1.0

task Exacttandems {
  command <<<
    exact_tandems
  >>>
  output {
    File out_stdout = stdout()
  }
}