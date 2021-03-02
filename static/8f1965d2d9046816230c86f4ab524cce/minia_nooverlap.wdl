version 1.0

task MiniaNooverlap {
  command <<<
    minia_nooverlap
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}