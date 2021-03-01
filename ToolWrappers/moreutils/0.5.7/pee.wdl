version 1.0

task Pee {
  command <<<
    pee
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}