version 1.0

task RNApdist {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean noconvNoconv
    String compareCompare
    Boolean backtrackBacktrack
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    String paramParamFile
  }
  command <<<
    RNApdist \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--noconv" false="" noconvNoconv} \
      ~{if defined(compareCompare) then ("--compare " +  '"' + compareCompare + '"') else ""} \
      ~{true="--backtrack" false="" backtrackBacktrack} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""}
  >>>
}