version 1.0

task Owl2obopl {
  input {
    Boolean? obo_input_file
    String usage
  }
  command <<<
    owl2obo_pl \
      ~{usage} \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    usage: ": owl2obo.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}