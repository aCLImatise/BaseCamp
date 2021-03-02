version 1.0

task GapDividerpl {
  command <<<
    gapDivider_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}