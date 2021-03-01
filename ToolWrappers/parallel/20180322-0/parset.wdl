version 1.0

task Parset {
  command <<<
    parset
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}