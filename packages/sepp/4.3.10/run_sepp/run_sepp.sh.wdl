version 1.0

task Runseppsh {
  command <<<
    run_sepp_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}