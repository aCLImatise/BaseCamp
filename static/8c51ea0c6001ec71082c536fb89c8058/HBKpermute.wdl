version 1.0

task HBKpermute {
  command <<<
    HBKpermute
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}