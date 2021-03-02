version 1.0

task Ssualign {
  command <<<
    _ssu_align
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}