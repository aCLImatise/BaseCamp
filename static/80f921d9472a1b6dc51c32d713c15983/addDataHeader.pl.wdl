version 1.0

task AddDataHeaderpl {
  command <<<
    addDataHeader_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}