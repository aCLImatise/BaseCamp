version 1.0

task GetTop20xFapl {
  command <<<
    get_top_20x_fa_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}