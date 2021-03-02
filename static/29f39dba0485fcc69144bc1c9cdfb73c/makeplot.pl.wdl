version 1.0

task Makeplotpl {
  command <<<
    makeplot_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}