version 1.0

task Trimspace {
  command <<<
    trimspace
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}