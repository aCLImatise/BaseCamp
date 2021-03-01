version 1.0

task Md5fa {
  command <<<
    md5fa
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}