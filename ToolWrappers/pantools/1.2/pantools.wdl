version 1.0

task Pantools {
  command <<<
    pantools
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}