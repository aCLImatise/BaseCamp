version 1.0

task Arv {
  command <<<
    arv
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}