version 1.0

task Paudarun {
  command <<<
    pauda_run
  >>>
  output {
    File out_stdout = stdout()
  }
}