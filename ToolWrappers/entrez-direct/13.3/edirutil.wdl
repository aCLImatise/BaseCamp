version 1.0

task Edirutil {
  command <<<
    edirutil
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}