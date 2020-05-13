version 1.0

task SsuCmscore {
  input {
    String nN
    Boolean lL
    String sS
    Boolean aA
    Boolean subSub
    String mxMxSize
    Boolean devhelpDevhelp
    Boolean emitEmit
    Boolean randomRandom
    String inInFile
    String outfileOutfile
    String lmLmIn
    String lmaxLmax
    Boolean padPad
    Boolean hHBanded
    String tauTau
    Boolean aln2Aln2Bands
    Boolean hHSafe
    Boolean nonNonBanded
    Boolean scoreScoreOnly
    Boolean viterbiViterbi
    Boolean searchSearch
    Boolean insideInside
    Boolean forwardForward
    String tausTaus
    String tauTauE
    String tTFile
    String? cmCmFile
  }
  command <<<
    ssu-cmscore \
      ~{cmCmFile} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{true="--sub" false="" subSub} \
      ~{if defined(mxMxSize) then ("--mxsize " +  '"' + mxMxSize + '"') else ""} \
      ~{true="--devhelp" false="" devhelpDevhelp} \
      ~{true="--emit" false="" emitEmit} \
      ~{true="--random" false="" randomRandom} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(lmLmIn) then ("--Lmin " +  '"' + lmLmIn + '"') else ""} \
      ~{if defined(lmaxLmax) then ("--Lmax " +  '"' + lmaxLmax + '"') else ""} \
      ~{true="--pad" false="" padPad} \
      ~{true="--hbanded" false="" hHBanded} \
      ~{if defined(tauTau) then ("--tau " +  '"' + tauTau + '"') else ""} \
      ~{true="--aln2bands" false="" aln2Aln2Bands} \
      ~{true="--hsafe" false="" hHSafe} \
      ~{true="--nonbanded" false="" nonNonBanded} \
      ~{true="--scoreonly" false="" scoreScoreOnly} \
      ~{true="--viterbi" false="" viterbiViterbi} \
      ~{true="--search" false="" searchSearch} \
      ~{true="--inside" false="" insideInside} \
      ~{true="--forward" false="" forwardForward} \
      ~{if defined(tausTaus) then ("--taus " +  '"' + tausTaus + '"') else ""} \
      ~{if defined(tauTauE) then ("--taue " +  '"' + tauTauE + '"') else ""} \
      ~{if defined(tTFile) then ("--tfile " +  '"' + tTFile + '"') else ""}
  >>>
}