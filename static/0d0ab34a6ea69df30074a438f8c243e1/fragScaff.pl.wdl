version 1.0

task FragScaffpl {
  command <<<
    fragScaff_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}