version 1.0

task RnazMafRenumberMafpl {
  command <<<
    rnazMafRenumberMaf_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}