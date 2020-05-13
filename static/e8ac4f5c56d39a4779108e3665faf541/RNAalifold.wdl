version 1.0

task RNAalifold {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean constraintConstraint
    Boolean colorColor
    Boolean alnAln
    Boolean nopsNops
    Boolean partPartFunc
    Boolean meMeA
    Boolean misMis
    Int stochStochBt
    Int stochStochBtEn
    Boolean circCirc
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    String cCFactor
    String nNFactor
    Boolean endEndGaps
    String riboRiboSumFile
    Boolean riboRiboSumScoring
    Boolean oldOld
    String paramParamFile
    File? fileFile1aln
  }
  command <<<
    RNAalifold \
      ~{fileFile1aln} \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--constraint" false="" constraintConstraint} \
      ~{true="--color" false="" colorColor} \
      ~{true="--aln" false="" alnAln} \
      ~{true="--noPS" false="" nopsNops} \
      ~{true="--partfunc" false="" partPartFunc} \
      ~{true="--MEA" false="" meMeA} \
      ~{true="--mis" false="" misMis} \
      ~{if defined(stochStochBt) then ("--stochBT " +  '"' + stochStochBt + '"') else ""} \
      ~{if defined(stochStochBtEn) then ("--stochBT_en " +  '"' + stochStochBtEn + '"') else ""} \
      ~{true="--circ" false="" circCirc} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(cCFactor) then ("--cfactor " +  '"' + cCFactor + '"') else ""} \
      ~{if defined(nNFactor) then ("--nfactor " +  '"' + nNFactor + '"') else ""} \
      ~{true="--endgaps" false="" endEndGaps} \
      ~{if defined(riboRiboSumFile) then ("--ribosum_file " +  '"' + riboRiboSumFile + '"') else ""} \
      ~{true="--ribosum_scoring" false="" riboRiboSumScoring} \
      ~{true="--old" false="" oldOld} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""}
  >>>
}