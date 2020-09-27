version 1.0

task Obo2owlpl {
  input {
    Boolean? obo_input_file
    Boolean? url
    Boolean? obo_owl_url
    String usage
  }
  command <<<
    obo2owl_pl \
      ~{usage} \
      ~{if (obo_input_file) then "-f" else ""} \
      ~{if (url) then "-u" else ""} \
      ~{if (obo_owl_url) then "-w" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    url: "URL"
    obo_owl_url: "obo in owl url"
    usage: ": obo2owl.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}