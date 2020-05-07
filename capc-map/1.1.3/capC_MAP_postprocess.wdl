version 1.0

task CapCMAPPostprocess {
  input {
    String cC
    String oO
  }
  command <<<
    capC-MAP postprocess \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}