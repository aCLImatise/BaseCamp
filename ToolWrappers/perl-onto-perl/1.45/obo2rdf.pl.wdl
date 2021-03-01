version 1.0

task Obo2rdfpl {
  input {
    Boolean? obo_input_file
    Boolean? url
    Boolean? namespace
    String usage
  }
  command <<<
    obo2rdf_pl \
      ~{usage} \
      ~{if (obo_input_file) then "-f" else ""} \
      ~{if (url) then "-u" else ""} \
      ~{if (namespace) then "-n" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    obo_input_file: "OBO input file"
    url: "URL"
    namespace: "namespace"
    usage: ": obo2rdf.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}