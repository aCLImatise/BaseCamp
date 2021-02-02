version 1.0

task FqtoolsCOMMAND {
  input {
    String? var_0
    String? var_1
    String? q
    String? var_3
    String? var_4
    Boolean? hv_dram_uli
  }
  command <<<
    fqtools COMMAND \
      ~{if defined(var_0) then ("-F " +  '"' + var_0 + '"') else ""} \
      ~{if defined(var_1) then ("-f " +  '"' + var_1 + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(var_3) then ("-B " +  '"' + var_3 + '"') else ""} \
      ~{if defined(var_4) then ("-b " +  '"' + var_4 + '"') else ""} \
      ~{if (hv_dram_uli) then "-hvdramuli" else ""}
  >>>
  parameter_meta {
    var_0: ""
    var_1: ""
    q: ""
    var_3: ""
    var_4: ""
    hv_dram_uli: ""
  }
  output {
    File out_stdout = stdout()
  }
}