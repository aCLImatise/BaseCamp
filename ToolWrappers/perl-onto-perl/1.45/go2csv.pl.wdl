version 1.0

task Go2csvpl {
  input {
    Boolean? obo_input_file
    String usage
    String options
  }
  command <<<
    go2csv_pl \
      ~{usage} \
      ~{options} \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    usage: ": go2csv.pl [options]"
    options: ":"
  }
  output {
    File out_stdout = stdout()
  }
}