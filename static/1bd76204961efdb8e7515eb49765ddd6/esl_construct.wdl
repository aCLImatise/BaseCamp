version 1.0

task EslConstruct {
  input {
    Boolean aA
    Boolean vV
    Boolean xX
    Boolean rR
    Boolean cC
    Boolean rfcRfc
    String indiIndi
    Boolean rRFindI
    String fFFreq
    Boolean fmFmIn
    String oO
    Boolean pfamPfam
    String lL
    String lmaxLmax
    String? msaMsaFile
  }
  command <<<
    esl-construct \
      ~{msaMsaFile} \
      ~{true="-a" false="" aA} \
      ~{true="-v" false="" vV} \
      ~{true="-x" false="" xX} \
      ~{true="-r" false="" rR} \
      ~{true="-c" false="" cC} \
      ~{true="--rfc" false="" rfcRfc} \
      ~{if defined(indiIndi) then ("--indi " +  '"' + indiIndi + '"') else ""} \
      ~{true="--rfindi" false="" rRFindI} \
      ~{if defined(fFFreq) then ("--ffreq " +  '"' + fFFreq + '"') else ""} \
      ~{true="--fmin" false="" fmFmIn} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--pfam" false="" pfamPfam} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(lmaxLmax) then ("--lmax " +  '"' + lmaxLmax + '"') else ""}
  >>>
}