version 1.0

task AlbatradisScatterplot {
  input {
    String controlControl
    String conditionCondition
    String windowWindowSize
    String outputOutputFile
    Boolean normaliseNormalise
    Boolean verboseVerbose
    Boolean debugDebug
  }
  command <<<
    albatradis-scatterplot \
      ~{if defined(controlControl) then ("--control " +  '"' + controlControl + '"') else ""} \
      ~{if defined(conditionCondition) then ("--condition " +  '"' + conditionCondition + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window_size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--outputfile " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--normalise" false="" normaliseNormalise} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug}
  >>>
}