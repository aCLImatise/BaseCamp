version 1.0

task Uropa {
  input {
    Boolean bB
    Boolean gG
    Boolean featureFeature
    Boolean featureFeatureAnchor
    Boolean distanceDistance
    Boolean strandStrand
    Boolean relativeRelativeLocation
    Boolean internalsInternals
    Boolean filterFilterAttribute
    Boolean attributeAttributeValues
    Boolean showShowAttributes
    Boolean priorityPriority
    String inputInput
    Boolean pP
    Boolean oO
    Boolean outputOutputByQuery
    Boolean summarySummary
    String threadsThreads
    String logLog
    Boolean debugDebug
    Boolean cC
  }
  command <<<
    uropa \
      ~{true="-b" false="" bB} \
      ~{true="-g" false="" gG} \
      ~{true="--feature" false="" featureFeature} \
      ~{true="--feature-anchor" false="" featureFeatureAnchor} \
      ~{true="--distance" false="" distanceDistance} \
      ~{true="--strand" false="" strandStrand} \
      ~{true="--relative-location" false="" relativeRelativeLocation} \
      ~{true="--internals" false="" internalsInternals} \
      ~{true="--filter-attribute" false="" filterFilterAttribute} \
      ~{true="--attribute-values" false="" attributeAttributeValues} \
      ~{true="--show-attributes" false="" showShowAttributes} \
      ~{true="--priority" false="" priorityPriority} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-o" false="" oO} \
      ~{true="--output-by-query" false="" outputOutputByQuery} \
      ~{true="--summary" false="" summarySummary} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="-c" false="" cC}
  >>>
}