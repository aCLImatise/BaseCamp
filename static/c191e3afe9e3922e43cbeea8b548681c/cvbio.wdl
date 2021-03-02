version 1.0

task Cvbio {
  command <<<
    cvbio
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}