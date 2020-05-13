version 1.0

task ScramMerge {
  input {
    String rR
    String rR
    Int sS
    Int sS
    String vV
    Boolean xX
  }
  command <<<
    scram_merge \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(vV) then ("-V " +  '"' + vV + '"') else ""} \
      ~{true="-X" false="" xX}
  >>>
}