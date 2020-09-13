version 1.0

task AnnotateRelativePositionpl {
  command <<<
    annotateRelativePosition_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}