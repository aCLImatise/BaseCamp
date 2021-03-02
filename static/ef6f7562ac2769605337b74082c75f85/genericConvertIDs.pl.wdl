version 1.0

task GenericConvertIDspl {
  command <<<
    genericConvertIDs_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}