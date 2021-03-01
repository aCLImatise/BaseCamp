version 1.0

task Prints2prflpl {
  command <<<
    prints2prfl_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}