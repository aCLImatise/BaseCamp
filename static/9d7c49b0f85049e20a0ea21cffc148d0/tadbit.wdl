version 1.0

task Tadbit {
  command <<<
    tadbit
  >>>
  output {
    File out_stdout = stdout()
  }
}