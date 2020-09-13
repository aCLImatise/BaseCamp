version 1.0

task MtsvchunkFLAGS {
  input {
    String? var_output
    String? var_input
  }
  command <<<
    mtsv_chunk FLAGS \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""}
  >>>
  parameter_meta {
    var_output: ""
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}