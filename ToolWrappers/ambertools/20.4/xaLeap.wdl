version 1.0

task XaLeap {
  command <<<
    xaLeap
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}