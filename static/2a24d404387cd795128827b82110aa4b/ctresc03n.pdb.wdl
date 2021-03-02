version 1.0

task Ctresc03npdb {
  command <<<
    ctresc03n_pdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}