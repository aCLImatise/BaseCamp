version 1.0

task PispinoSeqprep {
  input {
    String iI
    String oO
    File lL
    Int fastFastXQ
    Int fastFastXP
    Boolean fastFastXN
    Int bB
    String joinerJoinerMethod
    Boolean pearPearOptions
    Boolean rR
    Boolean vV
    Int tT
    Boolean forwardForwardReadsOnly
  }
  command <<<
    pispino_seqprep \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(fastFastXQ) then ("--FASTX-q " +  '"' + fastFastXQ + '"') else ""} \
      ~{if defined(fastFastXP) then ("--FASTX-p " +  '"' + fastFastXP + '"') else ""} \
      ~{true="--FASTX-n" false="" fastFastXN} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(joinerJoinerMethod) then ("--joiner_method " +  '"' + joinerJoinerMethod + '"') else ""} \
      ~{true="--PEAR_options" false="" pearPearOptions} \
      ~{true="-r" false="" rR} \
      ~{true="-v" false="" vV} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="--forwardreadsonly" false="" forwardForwardReadsOnly}
  >>>
}