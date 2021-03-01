version 1.0

task Proml {
  command <<<
    proml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}