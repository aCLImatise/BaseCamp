version 1.0

task Mdout2pymbarpl {
  command <<<
    mdout2pymbar_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}