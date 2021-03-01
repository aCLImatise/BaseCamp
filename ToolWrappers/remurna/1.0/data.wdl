version 1.0

task Data {
  command <<<
    data
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}