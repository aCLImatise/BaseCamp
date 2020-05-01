version 1.0

task VcfSampleCompare.pl {
  input {
    String oO
    String uU
    String sS
    Boolean dD
    String aA
    Boolean noNoG
    Boolean noNoF
    Boolean noNoW
    Int lL
    Int xX
    Boolean extendedExtended
  }
  command <<<
    vcfSampleCompare.pl \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{true="--no-g" false="" noNoG} \
      ~{true="--no-f" false="" noNoF} \
      ~{true="--no-w" false="" noNoW} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{true="--extended" false="" extendedExtended}
  >>>
}