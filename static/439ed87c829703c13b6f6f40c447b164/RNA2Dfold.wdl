version 1.0

task RNA2Dfold {
  input {
    Boolean detailedDetailedHelp
    Int numNumThreads
    Boolean partPartFunc
    Int stochStochBt
    String neighborhoodNeighborhood
    String pfPfScale
    Boolean noNoBt
    Boolean circCirc
    String paramParamFile
    Int danglesDangles
    Boolean noNoGu
    Boolean noNoClosingGu
    String? programProgram
  }
  command <<<
    RNA2Dfold \
      ~{programProgram} \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{if defined(numNumThreads) then ("--numThreads " +  '"' + numNumThreads + '"') else ""} \
      ~{true="--partfunc" false="" partPartFunc} \
      ~{if defined(stochStochBt) then ("--stochBT " +  '"' + stochStochBt + '"') else ""} \
      ~{if defined(neighborhoodNeighborhood) then ("--neighborhood " +  '"' + neighborhoodNeighborhood + '"') else ""} \
      ~{if defined(pfPfScale) then ("--pfScale " +  '"' + pfPfScale + '"') else ""} \
      ~{true="--noBT" false="" noNoBt} \
      ~{true="--circ" false="" circCirc} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu}
  >>>
}