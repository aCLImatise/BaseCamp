version 1.0

task FqtoolsI {
  input {
    Boolean? hv_dram_uli
    String? var_1
    String? var_2
    String? q
    String? var_4
    String? var_5
    String fq_tools
    String var_command
  }
  command <<<
    fqtools i \
      ~{fq_tools} \
      ~{var_command} \
      ~{true="-hvdramuli" false="" hv_dram_uli} \
      ~{if defined(var_1) then ("-b " +  '"' + var_1 + '"') else ""} \
      ~{if defined(var_2) then ("-B " +  '"' + var_2 + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(var_4) then ("-f " +  '"' + var_4 + '"') else ""} \
      ~{if defined(var_5) then ("-F " +  '"' + var_5 + '"') else ""}
  >>>
  parameter_meta {
    hv_dram_uli: ""
    var_1: ""
    var_2: ""
    q: ""
    var_4: ""
    var_5: ""
    fq_tools: ""
    var_command: ""
  }
}