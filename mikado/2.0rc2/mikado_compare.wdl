version 1.0

task MikadoCompare {
  input {
    String referenceReference
    String predictionPrediction
    Boolean selfSelf
    Boolean internalInternal
    Boolean indexIndex
  }
  command <<<
    mikado compare \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(predictionPrediction) then ("--prediction " +  '"' + predictionPrediction + '"') else ""} \
      ~{true="--self" false="" selfSelf} \
      ~{true="--internal" false="" internalInternal} \
      ~{true="--index" false="" indexIndex}
  >>>
}