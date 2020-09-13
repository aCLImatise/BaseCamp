version 1.0

task LabelSMappl {
  command <<<
    LabelSMap_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}