version 1.0

task RMETL {
  command <<<
    rMETL
  >>>
  output {
    File out_stdout = stdout()
  }
}