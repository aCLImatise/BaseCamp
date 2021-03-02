version 1.0

task Bogusness {
  command <<<
    bogusness
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}