version 1.0

task Peverify {
  command <<<
    peverify
  >>>
  output {
    File out_stdout = stdout()
  }
}