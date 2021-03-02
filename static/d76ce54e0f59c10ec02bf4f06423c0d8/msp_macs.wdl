version 1.0

task MspMacs {
  input {
    String history_file
  }
  command <<<
    msp macs \
      ~{history_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    history_file: "The msprime history file in HDF5 format"
  }
  output {
    File out_stdout = stdout()
  }
}