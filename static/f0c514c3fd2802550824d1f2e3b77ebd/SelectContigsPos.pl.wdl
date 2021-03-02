version 1.0

task SelectContigsPospl {
  command <<<
    SelectContigsPos_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}