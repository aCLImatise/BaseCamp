version 1.0

task RNALalifold {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Int spanSpan
    Boolean csvCsv
    Boolean partPartFunc
    Float cutCutOff
    Boolean misMis
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    String paramParamFile
    String cCFactor
    String nNFactor
    String riboRiboSumFile
    Boolean riboRiboSumScoring
    File? fileFile1aln
  }
  command <<<
    RNALalifold \
      ~{fileFile1aln} \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{if defined(spanSpan) then ("--span " +  '"' + spanSpan + '"') else ""} \
      ~{true="--csv" false="" csvCsv} \
      ~{true="--partfunc" false="" partPartFunc} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{true="--mis" false="" misMis} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""} \
      ~{if defined(cCFactor) then ("--cfactor " +  '"' + cCFactor + '"') else ""} \
      ~{if defined(nNFactor) then ("--nfactor " +  '"' + nNFactor + '"') else ""} \
      ~{if defined(riboRiboSumFile) then ("--ribosum_file " +  '"' + riboRiboSumFile + '"') else ""} \
      ~{true="--ribosum_scoring" false="" riboRiboSumScoring}
  >>>
}