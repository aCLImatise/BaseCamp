version 1.0

task Lav2pltpl {
  command <<<
    lav2plt_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}