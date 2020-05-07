version 1.0

task RNAsubopt {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean constraintConstraint
    Boolean noconvNoconv
    String deltaDeltaEnergy
    String deltaDeltaEnergyPost
    Boolean sortedSorted
    String stochStochBt
    Boolean circCirc
    Boolean dosDos
    Boolean zukerZuker
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    Boolean logLogMl
    String paramParamFile
  }
  command <<<
    RNAsubopt \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--constraint" false="" constraintConstraint} \
      ~{true="--noconv" false="" noconvNoconv} \
      ~{if defined(deltaDeltaEnergy) then ("--deltaEnergy " +  '"' + deltaDeltaEnergy + '"') else ""} \
      ~{if defined(deltaDeltaEnergyPost) then ("--deltaEnergyPost " +  '"' + deltaDeltaEnergyPost + '"') else ""} \
      ~{true="--sorted" false="" sortedSorted} \
      ~{if defined(stochStochBt) then ("--stochBT " +  '"' + stochStochBt + '"') else ""} \
      ~{true="--circ" false="" circCirc} \
      ~{true="--dos" false="" dosDos} \
      ~{true="--zuker" false="" zukerZuker} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{true="--logML" false="" logLogMl} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""}
  >>>
}