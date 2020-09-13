version 1.0

task SelectContigsPospl {
  command <<<
    SelectContigsPos_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}