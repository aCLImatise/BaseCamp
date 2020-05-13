version 1.0

task PhyluceAlignAddMissingDataDesignators {
  input {
    String alignmentsAlignments
    String outputOutput
    String matchMatchCountOutput
    String incompleteIncompleteMatrix
    Int minMinTaxA
    String missingMissingCharacter
    Boolean verbatimVerbatim
    String inputInputFormat
    String outputOutputFormat
    Boolean noNoCheckMissing
    String verbosityVerbosity
    String logLogPath
    String coresCores
  }
  command <<<
    phyluce_align_add_missing_data_designators \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(matchMatchCountOutput) then ("--match-count-output " +  '"' + matchMatchCountOutput + '"') else ""} \
      ~{if defined(incompleteIncompleteMatrix) then ("--incomplete-matrix " +  '"' + incompleteIncompleteMatrix + '"') else ""} \
      ~{if defined(minMinTaxA) then ("--min-taxa " +  '"' + minMinTaxA + '"') else ""} \
      ~{if defined(missingMissingCharacter) then ("--missing-character " +  '"' + missingMissingCharacter + '"') else ""} \
      ~{true="--verbatim" false="" verbatimVerbatim} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{true="--no-check-missing" false="" noNoCheckMissing} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""}
  >>>
}