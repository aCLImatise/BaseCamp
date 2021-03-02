version 1.0

task DelFromPrflpl {
  command <<<
    del_from_prfl_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}