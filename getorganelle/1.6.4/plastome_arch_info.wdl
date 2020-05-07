version 1.0

task PlastomeArchInfo.py {
  input {
    String oO
    Int rR
    String vV
  }
  command <<<
    plastome_arch_info.py \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}