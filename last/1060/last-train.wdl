version 1.0

task LastTrain {
  input {
    Boolean revRevSym
    Boolean matMatSym
    Boolean gapGapSym
    String pidPid
    String postPostMask
    String sampleSampleNumber
    String sampleSampleLength
    String rR
    String qQ
    String pP
    String aA
    String bB
    String aA
    String bB
    Int dD
    String eE
    String sS
    String sS
    String cC
    String tT
    String mM
    String kK
    String pP
    String xX
    String qQ
  }
  command <<<
    last-train \
      ~{true="--revsym" false="" revRevSym} \
      ~{true="--matsym" false="" matMatSym} \
      ~{true="--gapsym" false="" gapGapSym} \
      ~{if defined(pidPid) then ("--pid " +  '"' + pidPid + '"') else ""} \
      ~{if defined(postPostMask) then ("--postmask " +  '"' + postPostMask + '"') else ""} \
      ~{if defined(sampleSampleNumber) then ("--sample-number " +  '"' + sampleSampleNumber + '"') else ""} \
      ~{if defined(sampleSampleLength) then ("--sample-length " +  '"' + sampleSampleLength + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(xX) then ("-X " +  '"' + xX + '"') else ""} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""}
  >>>
}