version 1.0

task Dolpenny {
  command <<<
    dolpenny
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}