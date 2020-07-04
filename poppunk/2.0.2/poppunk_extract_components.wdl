version 1.0

task PoppunkExtractComponents.py {
  input {
    String extract_components
    String graph
    String var_output
  }
  command <<<
    poppunk_extract_components.py \
      ~{extract_components} \
      ~{graph} \
      ~{var_output}
  >>>
  parameter_meta {
    extract_components: ""
    graph: ""
    var_output: ""
  }
}