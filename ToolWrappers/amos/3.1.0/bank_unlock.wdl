version 1.0

task Bankunlock {
  command <<<
    bank_unlock
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}