version 1.0

task RemoveEclipsedORFspl {
  command <<<
    remove_eclipsed_ORFs_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}