version 1.0

task AddVagrentContextpl {
  command <<<
    addVagrentContext_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}