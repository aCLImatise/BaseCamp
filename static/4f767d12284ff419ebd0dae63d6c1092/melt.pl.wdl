version 1.0

task Meltpl {
  command <<<
    melt_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}