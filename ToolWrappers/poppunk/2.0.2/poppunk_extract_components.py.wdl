version 1.0

task PoppunkExtractComponentspy {
  input {
    String extract_components
    String graph
    String var_output
  }
  command <<<
    poppunk_extract_components_py \
      ~{extract_components} \
      ~{graph} \
      ~{var_output}
  >>>
  parameter_meta {
    extract_components: ""
    graph: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}