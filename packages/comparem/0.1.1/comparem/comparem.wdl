version 1.0

task Comparem {
  command <<<
    comparem
  >>>
  output {
    File out_stdout = stdout()
  }
}