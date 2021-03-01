version 1.0

task Rpsbproc {
  command <<<
    rpsbproc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}