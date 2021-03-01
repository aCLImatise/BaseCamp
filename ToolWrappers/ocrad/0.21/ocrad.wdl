version 1.0

task Ocrad {
  command <<<
    ocrad
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}