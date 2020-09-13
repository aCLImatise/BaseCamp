version 1.0

task Runmummer3 {
  command <<<
    run_mummer3
  >>>
  output {
    File out_stdout = stdout()
  }
}