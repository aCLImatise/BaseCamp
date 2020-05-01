version 1.0

task EslMask {
  input {
    String oO
    Boolean rR
    Boolean rR
    Boolean lL
    String mM
    String xX
    String inInFormat
  }
  command <<<
    esl-mask \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-R" false="" rR} \
      ~{true="-l" false="" lL} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""}
  >>>
}