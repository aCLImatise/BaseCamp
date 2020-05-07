version 1.0

task RNAduplex {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean sortedSorted
    Boolean noconvNoconv
    String deltaDeltaEnergy
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    String paramParamFile
  }
  command <<<
    RNAduplex \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--sorted" false="" sortedSorted} \
      ~{true="--noconv" false="" noconvNoconv} \
      ~{if defined(deltaDeltaEnergy) then ("--deltaEnergy " +  '"' + deltaDeltaEnergy + '"') else ""} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""}
  >>>
}