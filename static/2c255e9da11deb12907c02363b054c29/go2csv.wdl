version 1.0

task Go2csv.pl {
  input {
    Boolean? obo_input_file
  }
  command <<<
    go2csv.pl \
      ~{true="-f" false="" obo_input_file}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
  }
}