version 1.0

task Runmummer1 {
  command <<<
    run_mummer1
  >>>
  output {
    File out_stdout = stdout()
  }
}