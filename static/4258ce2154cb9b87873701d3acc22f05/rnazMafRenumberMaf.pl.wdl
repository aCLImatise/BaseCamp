version 1.0

task RnazMafRenumberMafpl {
  command <<<
    rnazMafRenumberMaf_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}