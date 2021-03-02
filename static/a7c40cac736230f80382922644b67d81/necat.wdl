version 1.0

task Necat {
  input {
    String correct_vertical_line_assemble_vertical_line_bridge_vertical_line_config
    String cfg_fname
  }
  command <<<
    necat \
      ~{correct_vertical_line_assemble_vertical_line_bridge_vertical_line_config} \
      ~{cfg_fname}
  >>>
  runtime {
    docker: "quay.io/biocontainers/necat:0.0.1_update20200803--h8b12597_0"
  }
  parameter_meta {
    correct_vertical_line_assemble_vertical_line_bridge_vertical_line_config: ""
    cfg_fname: ""
  }
  output {
    File out_stdout = stdout()
  }
}