version 1.0

task Obo2rdfpl {
  input {
    Boolean? obo_input_file
    Boolean? url
    Boolean? namespace
    String usage
    String options
  }
  command <<<
    obo2rdf_pl \
      ~{usage} \
      ~{options} \
      ~{if (obo_input_file) then "-f" else ""} \
      ~{if (url) then "-u" else ""} \
      ~{if (namespace) then "-n" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    url: "URL"
    namespace: "namespace"
    usage: ": obo2rdf.pl [options]"
    options: ":"
  }
  output {
    File out_stdout = stdout()
  }
}