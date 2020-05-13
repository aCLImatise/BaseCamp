version 1.0

task TripailleExpressionAddExpression {
  input {
    String matchMatchType
    String arrayArrayDesignId
    String quantificationQuantificationUnits
    String fileFileExtension
    String startStartRegex
    String stopStopRegex
    String seqSeqType
    Boolean useUseColumn
    Boolean noNoWait
  }
  command <<<
    tripaille expression add_expression \
      ~{if defined(matchMatchType) then ("--match_type " +  '"' + matchMatchType + '"') else ""} \
      ~{if defined(arrayArrayDesignId) then ("--array_design_id " +  '"' + arrayArrayDesignId + '"') else ""} \
      ~{if defined(quantificationQuantificationUnits) then ("--quantification_units " +  '"' + quantificationQuantificationUnits + '"') else ""} \
      ~{if defined(fileFileExtension) then ("--file_extension " +  '"' + fileFileExtension + '"') else ""} \
      ~{if defined(startStartRegex) then ("--start_regex " +  '"' + startStartRegex + '"') else ""} \
      ~{if defined(stopStopRegex) then ("--stop_regex " +  '"' + stopStopRegex + '"') else ""} \
      ~{if defined(seqSeqType) then ("--seq_type " +  '"' + seqSeqType + '"') else ""} \
      ~{true="--use_column" false="" useUseColumn} \
      ~{true="--no_wait" false="" noNoWait}
  >>>
}