version 1.0

task VtoolsFormat {
  input {
    String v_tools
  }
  command <<<
    vtools format \
      ~{v_tools}
  >>>
  parameter_meta {
    v_tools: ""
  }
  output {
    File out_stdout = stdout()
  }
}