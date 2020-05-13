version 1.0

task HtsboxPileup {
  input {
    File fF
    String rR
    File bB
    Int qQ
    Int qQ
    Int lL
    Int sS
    Float vV
    Int tT
    Boolean dD
    Int sS
    Boolean eE
    Boolean vV
    Boolean cC
    Boolean cC
    Boolean fF
    Boolean mM
    Boolean rR
    String xX
    Float dD
    Boolean uU
  }
  command <<<
    htsbox pileup \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(vV) then ("-V " +  '"' + vV + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{true="-v" false="" vV} \
      ~{true="-c" false="" cC} \
      ~{true="-C" false="" cC} \
      ~{true="-F" false="" fF} \
      ~{true="-M" false="" mM} \
      ~{true="-R" false="" rR} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{true="-u" false="" uU}
  >>>
}