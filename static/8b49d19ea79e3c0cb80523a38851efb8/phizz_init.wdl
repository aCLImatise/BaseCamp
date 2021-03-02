version 1.0

task PhizzInit {
  command <<<
    phizz init
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}