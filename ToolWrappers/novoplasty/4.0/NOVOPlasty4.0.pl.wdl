version 1.0

task NOVOPlasty40pl {
  command <<<
    NOVOPlasty4_0_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}