version 1.0

task Block2prflpl {
  command <<<
    block2prfl_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}