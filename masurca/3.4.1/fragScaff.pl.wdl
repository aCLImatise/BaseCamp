version 1.0

task FragScaffpl {
  command <<<
    fragScaff_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}