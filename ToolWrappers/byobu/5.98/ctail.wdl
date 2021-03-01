version 1.0

task Ctail {
  command <<<
    ctail
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}