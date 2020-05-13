version 1.0

task RNApaln {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean printPrintAlignment
    Boolean noconvNoconv
    String modeMode
    String gapGapO
    String gapeGape
    String seqSeqW
    Boolean endEndGaps
    String tempTemp
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    String paramParamFile
  }
  command <<<
    RNApaln \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--printAlignment" false="" printPrintAlignment} \
      ~{true="--noconv" false="" noconvNoconv} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(gapGapO) then ("--gapo " +  '"' + gapGapO + '"') else ""} \
      ~{if defined(gapeGape) then ("--gape " +  '"' + gapeGape + '"') else ""} \
      ~{if defined(seqSeqW) then ("--seqw " +  '"' + seqSeqW + '"') else ""} \
      ~{true="--endgaps" false="" endEndGaps} \
      ~{if defined(tempTemp) then ("--temp " +  '"' + tempTemp + '"') else ""} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""}
  >>>
}