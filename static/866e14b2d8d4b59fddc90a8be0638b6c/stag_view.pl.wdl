version 1.0

task Stagviewpl {
  command <<<
    stag_view_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}