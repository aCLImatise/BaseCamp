version 1.0

task RunDATMAsh {
  command <<<
    runDATMA_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}