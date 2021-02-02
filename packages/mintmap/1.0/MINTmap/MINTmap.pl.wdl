version 1.0

task MINTmappl {
  command <<<
    MINTmap_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}