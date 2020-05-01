version 1.0

task RNApvmin {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Int numNumThreads
    String shapeShapeConversion
    String tauTauSigmaRatio
    Int objectiveObjectiveFunction
    Int sampleSampleSize
    Boolean nonredundantNonredundant
    String intermediateIntermediatePath
    String initialInitialVector
    String minimizerMinimizer
    Int danglesDangles
    Boolean noNoLp
    Boolean noNoGu
    Boolean noNoClosingGu
    String paramParamFile
    Int maxMaxBpSpan
    File? fileFileShape
  }
  command <<<
    RNApvmin \
      ~{fileFileShape} \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{if defined(numNumThreads) then ("--numThreads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(shapeShapeConversion) then ("--shapeConversion " +  '"' + shapeShapeConversion + '"') else ""} \
      ~{if defined(tauTauSigmaRatio) then ("--tauSigmaRatio " +  '"' + tauTauSigmaRatio + '"') else ""} \
      ~{if defined(objectiveObjectiveFunction) then ("--objectiveFunction " +  '"' + objectiveObjectiveFunction + '"') else ""} \
      ~{if defined(sampleSampleSize) then ("--sampleSize " +  '"' + sampleSampleSize + '"') else ""} \
      ~{true="--nonRedundant" false="" nonredundantNonredundant} \
      ~{if defined(intermediateIntermediatePath) then ("--intermediatePath " +  '"' + intermediateIntermediatePath + '"') else ""} \
      ~{if defined(initialInitialVector) then ("--initialVector " +  '"' + initialInitialVector + '"') else ""} \
      ~{if defined(minimizerMinimizer) then ("--minimizer " +  '"' + minimizerMinimizer + '"') else ""} \
      ~{if defined(danglesDangles) then ("--dangles " +  '"' + danglesDangles + '"') else ""} \
      ~{true="--noLP" false="" noNoLp} \
      ~{true="--noGU" false="" noNoGu} \
      ~{true="--noClosingGU" false="" noNoClosingGu} \
      ~{if defined(paramParamFile) then ("--paramFile " +  '"' + paramParamFile + '"') else ""} \
      ~{if defined(maxMaxBpSpan) then ("--maxBPspan " +  '"' + maxMaxBpSpan + '"') else ""}
  >>>
}