version 1.0

task SsuAlign {
  input {
    Boolean fF
    String mM
    String bB
    String lL
    Boolean iI
    String nN
    Boolean dnaDna
    Boolean rfRfOnly
    Boolean noNoAlign
    Boolean noNoSearch
    Boolean topTopOnly
    Boolean forwardForward
    Boolean globalGlobal
    Boolean keepKeepInt
    String alnAlnOne
    Boolean noNoTrunc
    Boolean noNoProb
    String mxMxSize
    String? sequenceSequenceFile
    String? outputOutputDir
  }
  command <<<
    ssu-align \
      ~{sequenceSequenceFile} \
      ~{true="-f" false="" fF} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rfonly" false="" rfRfOnly} \
      ~{true="--no-align" false="" noNoAlign} \
      ~{true="--no-search" false="" noNoSearch} \
      ~{true="--toponly" false="" topTopOnly} \
      ~{true="--forward" false="" forwardForward} \
      ~{true="--global" false="" globalGlobal} \
      ~{true="--keep-int" false="" keepKeepInt} \
      ~{if defined(alnAlnOne) then ("--aln-one " +  '"' + alnAlnOne + '"') else ""} \
      ~{true="--no-trunc" false="" noNoTrunc} \
      ~{true="--no-prob" false="" noNoProb} \
      ~{if defined(mxMxSize) then ("--mxsize " +  '"' + mxMxSize + '"') else ""} \
      ~{outputOutputDir}
  >>>
}