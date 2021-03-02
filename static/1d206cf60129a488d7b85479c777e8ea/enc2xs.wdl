version 1.0

task Enc2xs {
  command <<<
    enc2xs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}