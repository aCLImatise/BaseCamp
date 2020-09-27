version 1.0

task Sratools {
  command <<<
    sratools
  >>>
  output {
    File out_stdout = stdout()
  }
}