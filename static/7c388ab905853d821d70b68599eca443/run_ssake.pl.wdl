version 1.0

task RunSsakepl {
  command <<<
    run_ssake_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}