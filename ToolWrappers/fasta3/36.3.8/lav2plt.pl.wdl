version 1.0

task Lav2pltpl {
  command <<<
    lav2plt_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}