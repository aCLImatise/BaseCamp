version 1.0

task Sublong {
  input {
    String iI
    String rR
    String oO
    Boolean samSamOutput
    Int tT
    Boolean vV
    Boolean xX
  }
  command <<<
    sublong \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--SAMoutput" false="" samSamOutput} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-X" false="" xX}
  >>>
}