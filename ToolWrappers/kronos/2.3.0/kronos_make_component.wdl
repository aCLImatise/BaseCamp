version 1.0

task KronosMakeComponent {
  input {
    String component_name
  }
  command <<<
    kronos make_component \
      ~{component_name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    component_name: "a name for the component to be generated"
  }
  output {
    File out_stdout = stdout()
  }
}