version 1.0

task RgtHintTraining {
  input {
    String annotateAnnotateFile
    File biasBiasTable
    Boolean semiSemiSupervised
    File signalSignalFile
    Int numNumStates
    File outputOutputLocation
    String outputOutputPrefix
  }
  command <<<
    rgt-hint training \
      ~{if defined(annotateAnnotateFile) then ("--annotate-file " +  '"' + annotateAnnotateFile + '"') else ""} \
      ~{if defined(biasBiasTable) then ("--bias-table " +  '"' + biasBiasTable + '"') else ""} \
      ~{true="--semi-supervised" false="" semiSemiSupervised} \
      ~{if defined(signalSignalFile) then ("--signal-file " +  '"' + signalSignalFile + '"') else ""} \
      ~{if defined(numNumStates) then ("--num-states " +  '"' + numNumStates + '"') else ""} \
      ~{if defined(outputOutputLocation) then ("--output-location " +  '"' + outputOutputLocation + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""}
  >>>
}