version 1.0

task RNAcofold {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean constraintConstraint
    Boolean noconvNoconv
    Boolean nopsNops
    Boolean partPartFunc
    Boolean allAllPf
    Boolean concentrationsConcentrations
    File concConcFile
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    String paramParamFile
  }
  command <<<
    RNAcofold \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--constraint" false="" constraintConstraint} \
      ~{true="--noconv" false="" noconvNoconv} \
      ~{true="--noPS" false="" nopsNops} \
      ~{true="--partfunc" false="" partPartFunc} \
      ~{true="--all_pf" false="" allAllPf} \
      ~{true="--concentrations" false="" concentrationsConcentrations} \
      ~{if defined(concConcFile) then ("--concfile " +  '"' + concConcFile + '"') else ""} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""}
  >>>
}