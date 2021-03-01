version 1.0

task Bdftogd {
  command <<<
    _bdftogd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}