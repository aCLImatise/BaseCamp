version 1.0

task SsuCmalign {
  input {
    String oO
    Boolean lL
    Boolean qQ
    String mM
    Boolean iILeaved
    Boolean noNoProb
    String inInFormat
    String chunkChunk
    Boolean devhelpDevhelp
    Boolean optOptAcc
    Boolean cyCyK
    Boolean sampleSample
    String sS
    Boolean viterbiViterbi
    Boolean subSub
    Boolean smallSmall
    Boolean hHBanded
    Boolean nonNonBanded
    String tauTau
    String mxMxSize
    Boolean rnaRna
    Boolean dnaDna
    Boolean matchMatchOnly
    String withWithAli
    Boolean withWithPKnots
    Boolean rfRf
    String gapGapThresh
    String cmCmIdx
    String cmCmName
    String tTFile
    String iIFile
    String elElFile
    String sSFile
    String? cmCmFile
    String? sequenceSequenceFile
  }
  command <<<
    ssu-cmalign \
      ~{cmCmFile} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="-q" false="" qQ} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{true="--ileaved" false="" iILeaved} \
      ~{true="--no-prob" false="" noNoProb} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(chunkChunk) then ("--chunk " +  '"' + chunkChunk + '"') else ""} \
      ~{true="--devhelp" false="" devhelpDevhelp} \
      ~{true="--optacc" false="" optOptAcc} \
      ~{true="--cyk" false="" cyCyK} \
      ~{true="--sample" false="" sampleSample} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="--viterbi" false="" viterbiViterbi} \
      ~{true="--sub" false="" subSub} \
      ~{true="--small" false="" smallSmall} \
      ~{true="--hbanded" false="" hHBanded} \
      ~{true="--nonbanded" false="" nonNonBanded} \
      ~{if defined(tauTau) then ("--tau " +  '"' + tauTau + '"') else ""} \
      ~{if defined(mxMxSize) then ("--mxsize " +  '"' + mxMxSize + '"') else ""} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--matchonly" false="" matchMatchOnly} \
      ~{if defined(withWithAli) then ("--withali " +  '"' + withWithAli + '"') else ""} \
      ~{true="--withpknots" false="" withWithPKnots} \
      ~{true="--rf" false="" rfRf} \
      ~{if defined(gapGapThresh) then ("--gapthresh " +  '"' + gapGapThresh + '"') else ""} \
      ~{if defined(cmCmIdx) then ("--cm-idx " +  '"' + cmCmIdx + '"') else ""} \
      ~{if defined(cmCmName) then ("--cm-name " +  '"' + cmCmName + '"') else ""} \
      ~{if defined(tTFile) then ("--tfile " +  '"' + tTFile + '"') else ""} \
      ~{if defined(iIFile) then ("--ifile " +  '"' + iIFile + '"') else ""} \
      ~{if defined(elElFile) then ("--elfile " +  '"' + elElFile + '"') else ""} \
      ~{if defined(sSFile) then ("--sfile " +  '"' + sSFile + '"') else ""} \
      ~{sequenceSequenceFile}
  >>>
}