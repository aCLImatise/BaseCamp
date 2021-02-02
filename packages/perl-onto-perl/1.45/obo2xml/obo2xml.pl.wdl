version 1.0

task Obo2xmlpl {
  input {
    Boolean? obo_input_file
    String usage
  }
  command <<<
    obo2xml_pl \
      ~{usage} \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    usage: ": obo2xml.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}