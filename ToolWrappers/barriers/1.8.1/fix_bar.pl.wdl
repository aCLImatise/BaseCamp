version 1.0

task FixBarpl {
  command <<<
    fix_bar_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}