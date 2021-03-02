version 1.0

task Bogus {
  command <<<
    bogus
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}