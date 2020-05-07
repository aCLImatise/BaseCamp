version 1.0

task QuasitoolsDistance {
  input {
    Boolean normalizeNormalize
    Boolean outputOutputDistance
    Int startposStartpos
    Int endposEndpos
    File outputOutput
    Boolean truncateTruncate
    Boolean removeRemoveNoCoverage
    Boolean keepKeepNoCoverage
  }
  command <<<
    quasitools distance \
      ~{true="--normalize" false="" normalizeNormalize} \
      ~{true="--output_distance" false="" outputOutputDistance} \
      ~{if defined(startposStartpos) then ("--startpos " +  '"' + startposStartpos + '"') else ""} \
      ~{if defined(endposEndpos) then ("--endpos " +  '"' + endposEndpos + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--truncate" false="" truncateTruncate} \
      ~{true="--remove_no_coverage" false="" removeRemoveNoCoverage} \
      ~{true="--keep_no_coverage" false="" keepKeepNoCoverage}
  >>>
}