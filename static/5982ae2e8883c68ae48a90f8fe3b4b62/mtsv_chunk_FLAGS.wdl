version 1.0

task MtsvChunkFLAGS {
  input {
    String? var_input
    String? var_output
    Int? gb
  }
  command <<<
    mtsv-chunk FLAGS \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(gb) then ("--gb " +  '"' + gb + '"') else ""}
  >>>
  parameter_meta {
    var_input: ""
    var_output: ""
    gb: ""
  }
}