version 1.0

task Acdvalid {
  command <<<
    acdvalid
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}