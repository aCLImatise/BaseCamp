version 1.0

task Xbuild {
  command <<<
    xbuild
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}