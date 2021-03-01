version 1.0

task CreateSrFrgpl {
  command <<<
    create_sr_frg_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}