version 1.0

task CreateBackboneMFA {
  input {
    File input_interval_file
    String output_mfa_name
  }
  command <<<
    createBackboneMFA \
      ~{input_interval_file} \
      ~{output_mfa_name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_interval_file: ""
    output_mfa_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}