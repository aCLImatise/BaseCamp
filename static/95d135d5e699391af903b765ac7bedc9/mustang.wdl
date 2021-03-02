version 1.0

task Mustang {
  command <<<
    mustang
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}