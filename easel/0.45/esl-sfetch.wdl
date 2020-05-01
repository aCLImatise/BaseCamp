version 1.0

task EslSfetch {
  input {
    String oO
    Boolean oO
    String nN
    Boolean rR
    String inInFormat
  }
  command <<<
    esl-sfetch \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-O" false="" oO} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""}
  >>>
}