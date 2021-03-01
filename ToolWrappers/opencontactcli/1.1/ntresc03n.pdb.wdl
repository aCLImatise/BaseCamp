version 1.0

task Ntresc03npdb {
  command <<<
    ntresc03n_pdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}