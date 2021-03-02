version 1.0

task RunDesmansh {
  command <<<
    runDesman_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}