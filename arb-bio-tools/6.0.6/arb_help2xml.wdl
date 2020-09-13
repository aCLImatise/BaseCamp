version 1.0

task ArbHelp2xml {
  input {
    String arb_help_file
    String xml_output
  }
  command <<<
    arb_help2xml \
      ~{arb_help_file} \
      ~{xml_output}
  >>>
  parameter_meta {
    arb_help_file: ""
    xml_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}