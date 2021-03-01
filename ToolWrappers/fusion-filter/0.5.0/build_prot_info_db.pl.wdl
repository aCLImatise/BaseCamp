version 1.0

task BuildProtInfoDbpl {
  command <<<
    build_prot_info_db_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}