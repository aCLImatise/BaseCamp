version 1.0

task Goa2rdf.pl {
  input {
    Boolean? goa_input_file
  }
  command <<<
    goa2rdf.pl \
      ~{true="-f" false="" goa_input_file}
  >>>
  parameter_meta {
    goa_input_file: "GOA input file"
  }
}