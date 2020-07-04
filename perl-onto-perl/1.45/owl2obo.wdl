version 1.0

task Owl2obo.pl {
  input {
    Boolean? obo_input_file
  }
  command <<<
    owl2obo.pl \
      ~{true="-f" false="" obo_input_file}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
  }
}