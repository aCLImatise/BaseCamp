version 1.0

task MtsvsignatureFLAGS {
  input {
    String? lca
    String? var_input
    String? index
  }
  command <<<
    mtsv_signature FLAGS \
      ~{if defined(lca) then ("--lca " +  '"' + lca + '"') else ""} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""}
  >>>
  parameter_meta {
    lca: ""
    var_input: ""
    index: ""
  }
  output {
    File out_stdout = stdout()
  }
}