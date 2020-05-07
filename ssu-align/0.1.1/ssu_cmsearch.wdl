version 1.0

task SsuCmsearch {
  input {
    String oO
    Boolean gG
    Boolean pP
    Boolean xX
    Boolean vV
    String zZ
    Boolean topTopOnly
    Boolean bottomBottomOnly
    String forecastForecast
    String inInFormat
    String mxMxSize
    Boolean devhelpDevhelp
    Boolean insideInside
    Boolean cyCyK
    Boolean forwardForward
    Boolean viterbiViterbi
    String eE
    String tT
    Boolean ncNc
    Boolean gaGa
    Boolean tcTc
    Boolean noNoQdb
    String betaBeta
    Boolean hHBanded
    String tauTau
    Boolean filFilNoHmm
    Boolean filFilNoQdb
    String filFilBeta
    String filFilTQdb
    String filFilTHmm
    String filFilEQdb
    String filFilEHmm
    String filFilSHmm
    String filFilSmaxHmm
    String filFilSmInHmm
    Boolean filFilAHmm
    String hmmHmmW
    String hmmHmmCw
    Boolean noNoAlign
    Boolean alnAlnHBanded
    Boolean alnAlnOptAcc
    String cmCmIdx
    String cmCmName
    String tabTabFile
    String gcGcFile
    Boolean rnaRna
    Boolean dnaDna
    String? cmCmFile
    String? sequenceSequenceFile
  }
  command <<<
    ssu-cmsearch \
      ~{cmCmFile} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{true="-p" false="" pP} \
      ~{true="-x" false="" xX} \
      ~{true="-v" false="" vV} \
      ~{if defined(zZ) then ("-Z " +  '"' + zZ + '"') else ""} \
      ~{true="--toponly" false="" topTopOnly} \
      ~{true="--bottomonly" false="" bottomBottomOnly} \
      ~{if defined(forecastForecast) then ("--forecast " +  '"' + forecastForecast + '"') else ""} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(mxMxSize) then ("--mxsize " +  '"' + mxMxSize + '"') else ""} \
      ~{true="--devhelp" false="" devhelpDevhelp} \
      ~{true="--inside" false="" insideInside} \
      ~{true="--cyk" false="" cyCyK} \
      ~{true="--forward" false="" forwardForward} \
      ~{true="--viterbi" false="" viterbiViterbi} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="--nc" false="" ncNc} \
      ~{true="--ga" false="" gaGa} \
      ~{true="--tc" false="" tcTc} \
      ~{true="--no-qdb" false="" noNoQdb} \
      ~{if defined(betaBeta) then ("--beta " +  '"' + betaBeta + '"') else ""} \
      ~{true="--hbanded" false="" hHBanded} \
      ~{if defined(tauTau) then ("--tau " +  '"' + tauTau + '"') else ""} \
      ~{true="--fil-no-hmm" false="" filFilNoHmm} \
      ~{true="--fil-no-qdb" false="" filFilNoQdb} \
      ~{if defined(filFilBeta) then ("--fil-beta " +  '"' + filFilBeta + '"') else ""} \
      ~{if defined(filFilTQdb) then ("--fil-T-qdb " +  '"' + filFilTQdb + '"') else ""} \
      ~{if defined(filFilTHmm) then ("--fil-T-hmm " +  '"' + filFilTHmm + '"') else ""} \
      ~{if defined(filFilEQdb) then ("--fil-E-qdb " +  '"' + filFilEQdb + '"') else ""} \
      ~{if defined(filFilEHmm) then ("--fil-E-hmm " +  '"' + filFilEHmm + '"') else ""} \
      ~{if defined(filFilSHmm) then ("--fil-S-hmm " +  '"' + filFilSHmm + '"') else ""} \
      ~{if defined(filFilSmaxHmm) then ("--fil-Smax-hmm " +  '"' + filFilSmaxHmm + '"') else ""} \
      ~{if defined(filFilSmInHmm) then ("--fil-Smin-hmm " +  '"' + filFilSmInHmm + '"') else ""} \
      ~{true="--fil-A-hmm" false="" filFilAHmm} \
      ~{if defined(hmmHmmW) then ("--hmm-W " +  '"' + hmmHmmW + '"') else ""} \
      ~{if defined(hmmHmmCw) then ("--hmm-cW " +  '"' + hmmHmmCw + '"') else ""} \
      ~{true="--noalign" false="" noNoAlign} \
      ~{true="--aln-hbanded" false="" alnAlnHBanded} \
      ~{true="--aln-optacc" false="" alnAlnOptAcc} \
      ~{if defined(cmCmIdx) then ("--cm-idx " +  '"' + cmCmIdx + '"') else ""} \
      ~{if defined(cmCmName) then ("--cm-name " +  '"' + cmCmName + '"') else ""} \
      ~{if defined(tabTabFile) then ("--tabfile " +  '"' + tabTabFile + '"') else ""} \
      ~{if defined(gcGcFile) then ("--gcfile " +  '"' + gcGcFile + '"') else ""} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--dna" false="" dnaDna} \
      ~{sequenceSequenceFile}
  >>>
}