version 1.0

task Pvacsequi {
  command <<<
    pvacseq_ui
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}