version 1.0

task RnazSliceAlnByPospl {
  command <<<
    rnazSliceAlnByPos_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}