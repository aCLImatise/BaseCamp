version 1.0

task CapCMAPRun {
  input {
    String cC
    String oO
  }
  command <<<
    capC-MAP run \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}