version 1.0

task VtoolsModels {
  input {
    String v_tools
  }
  command <<<
    vtools models_ \
      ~{v_tools}
  >>>
  parameter_meta {
    v_tools: ""
  }
  output {
    File out_stdout = stdout()
  }
}