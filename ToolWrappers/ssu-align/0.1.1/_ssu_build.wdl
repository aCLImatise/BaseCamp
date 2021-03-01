version 1.0

task Ssubuild {
  command <<<
    _ssu_build
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}