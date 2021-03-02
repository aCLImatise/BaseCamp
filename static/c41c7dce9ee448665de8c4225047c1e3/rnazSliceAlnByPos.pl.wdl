version 1.0

task RnazSliceAlnByPospl {
  command <<<
    rnazSliceAlnByPos_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}