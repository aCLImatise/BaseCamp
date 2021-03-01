version 1.0

task DumbbellFilterpl {
  command <<<
    dumbbell_filter_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}