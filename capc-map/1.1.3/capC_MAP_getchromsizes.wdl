version 1.0

task CapCMAPGetchromsizes {
  input {
    String fF
    String oO
  }
  command <<<
    capC-MAP getchromsizes \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}