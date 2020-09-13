version 1.0

task CortexCon31 {
  input {
    String? dump_binary
    Int? mem_height
    File? var_input
    String cortex_con
  }
  command <<<
    cortex_con_31 \
      ~{cortex_con} \
      ~{if defined(dump_binary) then ("--dump_binary " +  '"' + dump_binary + '"') else ""} \
      ~{if defined(mem_height) then ("--mem_height " +  '"' + mem_height + '"') else ""} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""}
  >>>
  parameter_meta {
    dump_binary: ""
    mem_height: ""
    var_input: ""
    cortex_con: ""
  }
  output {
    File out_stdout = stdout()
  }
}