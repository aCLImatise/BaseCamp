version 1.0

task Go2owl.pl {
  input {
    Boolean? obo_input_file
  }
  command <<<
    go2owl.pl \
      ~{true="-f" false="" obo_input_file}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
  }
}