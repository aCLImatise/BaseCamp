version 1.0

task Linup {
  command <<<
    Linup
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}