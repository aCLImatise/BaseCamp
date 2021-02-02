version 1.0

task GapDividerpl {
  command <<<
    gapDivider_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}