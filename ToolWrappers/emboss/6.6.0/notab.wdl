version 1.0

task Notab {
  command <<<
    notab
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}