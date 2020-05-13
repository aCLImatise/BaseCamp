version 1.0

task CoFold {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean constraintConstraint
    Boolean noconvNoconv
    Boolean nopsNops
    Boolean partPartFunc
    Boolean meMeA
    Boolean circCirc
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    String paramParamFile
  }
  command <<<
    CoFold \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--constraint" false="" constraintConstraint} \
      ~{true="--noconv" false="" noconvNoconv} \
      ~{true="--noPS" false="" nopsNops} \
      ~{true="--partfunc" false="" partPartFunc} \
      ~{true="--MEA" false="" meMeA} \
      ~{true="--circ" false="" circCirc} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""}
  >>>
}