version 1.0

task MassSpecDataReaderdll {
  command <<<
    MassSpecDataReader_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}