version 1.0

task Goa2rdfpl {
  input {
    Boolean? goa_input_file
    String usage
  }
  command <<<
    goa2rdf_pl \
      ~{usage} \
      ~{if (goa_input_file) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    goa_input_file: "GOA input file"
    usage: ": goa2rdf.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}