version 1.0

task Goa2rdfpl {
  input {
    Boolean? goa_input_file
    String usage
    String options
  }
  command <<<
    goa2rdf_pl \
      ~{usage} \
      ~{options} \
      ~{if (goa_input_file) then "-f" else ""}
  >>>
  parameter_meta {
    goa_input_file: "GOA input file"
    usage: ": goa2rdf.pl [options]"
    options: ":"
  }
  output {
    File out_stdout = stdout()
  }
}