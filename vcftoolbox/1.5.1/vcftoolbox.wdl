version 1.0

task Vcftoolbox {
  command <<<
    vcftoolbox
  >>>
  output {
    File out_stdout = stdout()
  }
}