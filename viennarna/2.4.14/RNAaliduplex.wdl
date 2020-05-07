version 1.0

task RNAaliduplex {
  input {
    Boolean detailedDetailedHelp
    String deltaDeltaEnergy
    Boolean sortedSorted
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    String nspNsp
    String paramParamFile
    File? fileFile1aln
    File? fileFile2aln
  }
  command <<<
    RNAaliduplex \
      ~{fileFile1aln} \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{if defined(deltaDeltaEnergy) then ("--deltaEnergy " +  '"' + deltaDeltaEnergy + '"') else ""} \
      ~{true="--sorted" false="" sortedSorted} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(nspNsp) then ("--nsp " +  '"' + nspNsp + '"') else ""} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""} \
      ~{fileFile2aln}
  >>>
}