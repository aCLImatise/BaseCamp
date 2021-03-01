version 1.0

task Fileinfo {
  command <<<
    fileinfo
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}