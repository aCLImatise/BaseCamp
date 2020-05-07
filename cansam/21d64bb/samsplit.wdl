version 1.0

task Samsplit {
  input {
    Boolean bB
    String fF
    File oO
    String qQ
    String zZ
  }
  command <<<
    samsplit \
      ~{true="-b" false="" bB} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""}
  >>>
}