version 1.0

task Bbf {
  command <<<
    bbf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}