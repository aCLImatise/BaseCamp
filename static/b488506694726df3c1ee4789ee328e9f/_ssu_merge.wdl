version 1.0

task Ssumerge {
  command <<<
    _ssu_merge
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}