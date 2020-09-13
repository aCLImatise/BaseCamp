version 1.0

task Obo2tranpl {
  input {
    Boolean? obo_input_file
    String usage
    String options
  }
  command <<<
    obo2tran_pl \
      ~{usage} \
      ~{options} \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    usage: ": obo2tran.pl [options]"
    options: ":"
  }
  output {
    File out_stdout = stdout()
  }
}