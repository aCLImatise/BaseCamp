version 1.0

task AdvntrDelmodel {
  command <<<
    advntr delmodel
  >>>
  output {
    File out_stdout = stdout()
  }
}