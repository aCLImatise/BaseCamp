version 1.0

task Yn00 {
  command <<<
    yn00
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}