version 1.0

task Moca {
  command <<<
    moca
  >>>
  output {
    File out_stdout = stdout()
  }
}