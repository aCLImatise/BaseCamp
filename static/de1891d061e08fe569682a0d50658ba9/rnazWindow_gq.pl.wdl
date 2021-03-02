version 1.0

task RnazWindowGqpl {
  command <<<
    rnazWindow_gq_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}