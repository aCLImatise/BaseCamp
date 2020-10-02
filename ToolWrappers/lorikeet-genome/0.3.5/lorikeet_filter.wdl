version 1.0

task LorikeetFilter {
  command <<<
    lorikeet filter
  >>>
  output {
    File out_stdout = stdout()
  }
}