version 1.0

task SelectCmfinderpl {
  command <<<
    select_cmfinder_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}