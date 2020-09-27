version 1.0

task Ytasm {
  command <<<
    ytasm
  >>>
  output {
    File out_stdout = stdout()
  }
}