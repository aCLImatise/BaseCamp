version 1.0

task Obo2xml.pl {
  input {
    Boolean? obo_input_file
  }
  command <<<
    obo2xml.pl \
      ~{true="-f" false="" obo_input_file}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
  }
}