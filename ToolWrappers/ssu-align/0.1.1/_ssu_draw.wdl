version 1.0

task Ssudraw {
  command <<<
    _ssu_draw
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}