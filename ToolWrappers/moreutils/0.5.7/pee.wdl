version 1.0

task Pee {
  command <<<
    pee
  >>>
  output {
    File out_stdout = stdout()
  }
}