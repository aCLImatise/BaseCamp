version 1.0

task Tblastx {
  command <<<
    tblastx
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}