version 1.0

task SplitHaplotype {
  input {
    String sS
    String rR
    String rR
    String crCr
    Int clCl
    Boolean vV
  }
  command <<<
    splitHaplotype \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(crCr) then ("-cr " +  '"' + crCr + '"') else ""} \
      ~{if defined(clCl) then ("-cl " +  '"' + clCl + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}