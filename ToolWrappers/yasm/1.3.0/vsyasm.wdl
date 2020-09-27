version 1.0

task Vsyasm {
  command <<<
    vsyasm
  >>>
  output {
    File out_stdout = stdout()
  }
}