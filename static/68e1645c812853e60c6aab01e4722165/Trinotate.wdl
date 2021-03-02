version 1.0

task Trinotate {
  command <<<
    Trinotate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}