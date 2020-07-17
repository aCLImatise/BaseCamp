version 1.0

task Obo2tran.pl {
  input {
    Boolean? obo_input_file
  }
  command <<<
    obo2tran.pl \
      ~{true="-f" false="" obo_input_file}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
  }
}