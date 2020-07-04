version 1.0

task MtsvSignatureFLAGS {
  input {
    String? index
    String? var_input
    String? lca
    String? var_output
  }
  command <<<
    mtsv-signature FLAGS \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(lca) then ("--lca " +  '"' + lca + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""}
  >>>
  parameter_meta {
    index: ""
    var_input: ""
    lca: ""
    var_output: ""
  }
}