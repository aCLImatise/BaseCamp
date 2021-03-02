version 1.0

task PegasusScpOutputOutputName {
  input {
    String? round_to
    Boolean? dense
    String pegasus
    String scp_output
    String input_data_file
  }
  command <<<
    pegasus scp_output output_name \
      ~{pegasus} \
      ~{scp_output} \
      ~{input_data_file} \
      ~{if defined(round_to) then ("--round-to " +  '"' + round_to + '"') else ""} \
      ~{if (dense) then "--dense" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1"
  }
  parameter_meta {
    round_to: ""
    dense: ""
    pegasus: ""
    scp_output: ""
    input_data_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}