version 1.0

task DEploid {
  command <<<
    dEploid
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}