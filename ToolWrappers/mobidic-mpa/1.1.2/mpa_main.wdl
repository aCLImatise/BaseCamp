version 1.0

task MpaMain {
  command <<<
    mpa_main
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}