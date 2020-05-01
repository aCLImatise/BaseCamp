version 1.0

task RNAlocmin {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    String seqSeq
    String previousPrevious
    String moveMove
    Int minMinNum
    Int findFindNum
    Int verboseVerboseLvl
    Int depthDepth
    String minhMinh
    String walkWalk
    Boolean noNoLp
    String paramParamFile
    Int danglesDangles
    Boolean pseudoPseudoKnots
    Boolean justJustRead
    Boolean neighborhoodNeighborhood
    Boolean degeneracyDegeneracyOff
    Boolean justJustOutput
    Boolean barBarTree
    String barrBarrName
    String barrierBarrierFile
    Boolean ratesRates
    String ratesRatesFile
    String tempTemp
    String floodFloodPortion
    Int floodFloodMax
    Float eERange
  }
  command <<<
    RNAlocmin \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{if defined(seqSeq) then ("--seq " +  '"' + seqSeq + '"') else ""} \
      ~{if defined(previousPrevious) then ("--previous " +  '"' + previousPrevious + '"') else ""} \
      ~{if defined(moveMove) then ("--move " +  '"' + moveMove + '"') else ""} \
      ~{if defined(minMinNum) then ("--min-num " +  '"' + minMinNum + '"') else ""} \
      ~{if defined(findFindNum) then ("--find-num " +  '"' + findFindNum + '"') else ""} \
      ~{if defined(verboseVerboseLvl) then ("--verbose-lvl " +  '"' + verboseVerboseLvl + '"') else ""} \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""} \
      ~{if defined(minhMinh) then ("--minh " +  '"' + minhMinh + '"') else ""} \
      ~{if defined(walkWalk) then ("--walk " +  '"' + walkWalk + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--pseudoknots" false="" pseudoPseudoKnots} \
      ~{true="--just-read" false="" justJustRead} \
      ~{true="--neighborhood" false="" neighborhoodNeighborhood} \
      ~{true="--degeneracy-off" false="" degeneracyDegeneracyOff} \
      ~{true="--just-output" false="" justJustOutput} \
      ~{true="--bartree" false="" barBarTree} \
      ~{if defined(barrBarrName) then ("--barr-name " +  '"' + barrBarrName + '"') else ""} \
      ~{if defined(barrierBarrierFile) then ("--barrier-file " +  '"' + barrierBarrierFile + '"') else ""} \
      ~{true="--rates" false="" ratesRates} \
      ~{if defined(ratesRatesFile) then ("--rates-file " +  '"' + ratesRatesFile + '"') else ""} \
      ~{if defined(tempTemp) then ("--temp " +  '"' + tempTemp + '"') else ""} \
      ~{if defined(floodFloodPortion) then ("--floodPortion " +  '"' + floodFloodPortion + '"') else ""} \
      ~{if defined(floodFloodMax) then ("--floodMax " +  '"' + floodFloodMax + '"') else ""} \
      ~{if defined(eERange) then ("--eRange " +  '"' + eERange + '"') else ""}
  >>>
}