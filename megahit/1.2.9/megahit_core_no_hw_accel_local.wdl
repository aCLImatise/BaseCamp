version 1.0

task MegahitCoreNoHwAccelLocal {
  input {
    String cC
    String rR
    String oO
    String? localLocal
  }
  command <<<
    megahit_core_no_hw_accel local \
      ~{localLocal} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}