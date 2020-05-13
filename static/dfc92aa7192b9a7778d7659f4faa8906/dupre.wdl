version 1.0

task Dupre {
  input {
    Array[String]+ observedObserved
    String targetTarget
    Array[String]+ truthTruth
    String subsampleSubsample
    Boolean verboseVerbose
    Boolean complexityComplexity
    Int k0K0
    String zZWidth
    String zZWidth
    String nameName
    Boolean histogramHistogram
    Boolean stripStripNames
  }
  command <<<
    dupre \
      ~{if defined(observedObserved) then ("--observed " +  '"' + observedObserved + '"') else ""} \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(truthTruth) then ("--truth " +  '"' + truthTruth + '"') else ""} \
      ~{if defined(subsampleSubsample) then ("--subsample " +  '"' + subsampleSubsample + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--complexity" false="" complexityComplexity} \
      ~{if defined(k0K0) then ("--K0 " +  '"' + k0K0 + '"') else ""} \
      ~{if defined(zZWidth) then ("--zwidth " +  '"' + zZWidth + '"') else ""} \
      ~{if defined(zZWidth) then ("--Zwidth " +  '"' + zZWidth + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{true="--histogram" false="" histogramHistogram} \
      ~{true="--stripnames" false="" stripStripNames}
  >>>
}