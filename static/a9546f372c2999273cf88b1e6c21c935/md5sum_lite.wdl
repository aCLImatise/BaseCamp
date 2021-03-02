version 1.0

task Md5sumlite {
  command <<<
    md5sum_lite
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}