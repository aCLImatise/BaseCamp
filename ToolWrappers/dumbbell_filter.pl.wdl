version 1.0

task DumbbellFilterpl {
  command <<<
    dumbbell_filter_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}