version 1.0

task NOVOPlastypl {
  command <<<
    NOVOPlasty_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}