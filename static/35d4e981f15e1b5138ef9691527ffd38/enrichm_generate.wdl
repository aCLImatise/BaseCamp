version 1.0

task EnrichmGenerate {
  input {
    String logLog
    String verbosityVerbosity
    String outputOutput
    Boolean forceForce
    String inputInputMatrix
    String groupsGroups
    String modelModelType
    String testingTestingPortion
    Boolean gridGridSearch
    String threadsThreads
  }
  command <<<
    enrichm generate \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(inputInputMatrix) then ("--input_matrix " +  '"' + inputInputMatrix + '"') else ""} \
      ~{if defined(groupsGroups) then ("--groups " +  '"' + groupsGroups + '"') else ""} \
      ~{if defined(modelModelType) then ("--model_type " +  '"' + modelModelType + '"') else ""} \
      ~{if defined(testingTestingPortion) then ("--testing_portion " +  '"' + testingTestingPortion + '"') else ""} \
      ~{true="--grid_search" false="" gridGridSearch} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}