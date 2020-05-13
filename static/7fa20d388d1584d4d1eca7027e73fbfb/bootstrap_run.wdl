version 1.0

task BootstrapRun.sh {
  input {
    String oO
    String nN
    String sS
  }
  command <<<
    bootstrap_run.sh \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}