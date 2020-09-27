version 1.0

task Startasap {
  command <<<
    start_asap
  >>>
  output {
    File out_stdout = stdout()
  }
}