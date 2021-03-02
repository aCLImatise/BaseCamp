version 1.0

task Ca2scaff {
  command <<<
    ca2scaff
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}