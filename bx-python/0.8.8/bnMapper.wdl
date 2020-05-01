version 1.0

task BnMapper.py {
  input {
    String formatFormat
    File outputOutput
    Float thresholdThreshold
    Boolean screenScreen
    String gapGap
    String verboseVerbose
    Boolean keepKeepSplit
    String inInFormat
    String? inputInput
    String? alignmentAlignment
  }
  command <<<
    bnMapper.py \
      ~{inputInput} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{true="--screen" false="" screenScreen} \
      ~{if defined(gapGap) then ("--gap " +  '"' + gapGap + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{true="--keep_split" false="" keepKeepSplit} \
      ~{if defined(inInFormat) then ("--in_format " +  '"' + inInFormat + '"') else ""} \
      ~{alignmentAlignment}
  >>>
}