version 1.0

task MspHaplotypes {
  input {
    String history_file
  }
  command <<<
    msp haplotypes \
      ~{history_file}
  >>>
  parameter_meta {
    history_file: "The msprime history file in HDF5 format"
  }
  output {
    File out_stdout = stdout()
  }
}