version 1.0

task RunDATMAsh {
  command <<<
    runDATMA_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}