version 1.0

task Coloralnpl {
  command <<<
    coloraln_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}