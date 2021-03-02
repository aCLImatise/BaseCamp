version 1.0

task Residc03npdb {
  command <<<
    residc03n_pdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}