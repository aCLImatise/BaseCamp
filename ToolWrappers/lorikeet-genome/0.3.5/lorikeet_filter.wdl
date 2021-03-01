version 1.0

task LorikeetFilter {
  command <<<
    lorikeet filter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}