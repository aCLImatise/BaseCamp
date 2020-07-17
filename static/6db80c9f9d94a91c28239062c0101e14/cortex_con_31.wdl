version 1.0

task CortexCon31 {
  input {
    File? var_input
    String? mem_height
    String? dump_binary
    String cortex_con
  }
  command <<<
    cortex_con_31 \
      ~{cortex_con} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(mem_height) then ("--mem_height " +  '"' + mem_height + '"') else ""} \
      ~{if defined(dump_binary) then ("--dump_binary " +  '"' + dump_binary + '"') else ""}
  >>>
  parameter_meta {
    var_input: ""
    mem_height: ""
    dump_binary: ""
    cortex_con: ""
  }
}