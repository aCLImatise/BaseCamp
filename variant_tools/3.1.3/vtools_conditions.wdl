version 1.0

task VtoolsConditions {
  input {
    String v_tools
  }
  command <<<
    vtools conditions \
      ~{v_tools}
  >>>
  parameter_meta {
    v_tools: ""
  }
  output {
    File out_stdout = stdout()
  }
}