version 1.0

task Circospl {
  command <<<
    Circos_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}