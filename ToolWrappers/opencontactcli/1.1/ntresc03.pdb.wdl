version 1.0

task Ntresc03pdb {
  command <<<
    ntresc03_pdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}