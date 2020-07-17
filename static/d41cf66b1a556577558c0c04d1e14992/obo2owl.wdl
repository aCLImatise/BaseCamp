version 1.0

task Obo2owl.pl {
  input {
    Boolean? obo_input_file
    Boolean? url
    Boolean? obo_owl_url
  }
  command <<<
    obo2owl.pl \
      ~{true="-f" false="" obo_input_file} \
      ~{true="-u" false="" url} \
      ~{true="-w" false="" obo_owl_url}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    url: "URL"
    obo_owl_url: "obo in owl url"
  }
}