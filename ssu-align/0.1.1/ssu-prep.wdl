version 1.0

task SsuPrep {
  input {
    Boolean fF
    Boolean qQ
    Boolean eE
    Boolean noNoBash
    Boolean noNoMerge
    Boolean keepKeepMerge
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
    String? seqSeqFile
    String? outputOutputDir
    String? numNumJobs
  }
  command <<<
    ssu-prep \
      ~{seqSeqFile} \
      ~{true="-f" false="" fF} \
      ~{true="-q" false="" qQ} \
      ~{true="-e" false="" eE} \
      ~{true="--no-bash" false="" noNoBash} \
      ~{true="--no-merge" false="" noNoMerge} \
      ~{true="--keep-merge" false="" keepKeepMerge} \
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
      ~{outputOutputDir} \
      ~{numNumJobs}
  >>>
}