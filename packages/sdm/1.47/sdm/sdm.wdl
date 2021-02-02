version 1.0

task Sdm {
  command <<<
    sdm
  >>>
  output {
    File out_stdout = stdout()
  }
}