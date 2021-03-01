version 1.0

task Mkhead {
  command <<<
    mkhead
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}