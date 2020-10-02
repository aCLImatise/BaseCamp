version 1.0

task Yasm {
  command <<<
    yasm
  >>>
  output {
    File out_stdout = stdout()
  }
}