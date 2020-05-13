version 1.0

task MhcflurryClass1TrainPresentationModels {
  input {
    File dataData
    String outOutModelsDir
    String affinityAffinityPredictor
    String processingProcessingPredictorWithFlanks
    String processingProcessingPredictorWithoutFlanks
    String verbosityVerbosity
    Boolean debugDebug
    String hlaHlaColumn
    String targetTargetColumn
  }
  command <<<
    mhcflurry-class1-train-presentation-models \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(outOutModelsDir) then ("--out-models-dir " +  '"' + outOutModelsDir + '"') else ""} \
      ~{if defined(affinityAffinityPredictor) then ("--affinity-predictor " +  '"' + affinityAffinityPredictor + '"') else ""} \
      ~{if defined(processingProcessingPredictorWithFlanks) then ("--processing-predictor-with-flanks " +  '"' + processingProcessingPredictorWithFlanks + '"') else ""} \
      ~{if defined(processingProcessingPredictorWithoutFlanks) then ("--processing-predictor-without-flanks " +  '"' + processingProcessingPredictorWithoutFlanks + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(hlaHlaColumn) then ("--hla-column " +  '"' + hlaHlaColumn + '"') else ""} \
      ~{if defined(targetTargetColumn) then ("--target-column " +  '"' + targetTargetColumn + '"') else ""}
  >>>
}