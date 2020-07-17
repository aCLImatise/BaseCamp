version 1.0

task Obo2rdf.pl {
  input {
    Boolean? obo_input_file
    Boolean? url
    Boolean? namespace
  }
  command <<<
    obo2rdf.pl \
      ~{true="-f" false="" obo_input_file} \
      ~{true="-u" false="" url} \
      ~{true="-n" false="" namespace}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    url: "URL"
    namespace: "namespace"
  }
}