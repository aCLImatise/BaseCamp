version 1.0

task Isatools {
  command <<<
    isatools
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}