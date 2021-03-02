version 1.0

task Pp {
  command <<<
    pp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}