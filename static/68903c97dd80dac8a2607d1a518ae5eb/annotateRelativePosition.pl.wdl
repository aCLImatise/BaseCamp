version 1.0

task AnnotateRelativePositionpl {
  command <<<
    annotateRelativePosition_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}