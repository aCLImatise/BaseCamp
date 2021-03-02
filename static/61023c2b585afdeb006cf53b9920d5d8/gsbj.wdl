version 1.0

task Gsbj {
  command <<<
    gsbj
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}