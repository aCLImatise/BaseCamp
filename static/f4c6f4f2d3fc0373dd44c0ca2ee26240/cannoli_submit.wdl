version 1.0

task Cannolisubmit {
  command <<<
    cannoli_submit
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}